# Odoo
server/web/database/manager      
server/web/database/selector
   
SIFA: Droit d'acces?:  

Module odoo backup auto:  
http://www.odoo.yenthevg.com/automated-backups-in-odoo/ 

vue html d'un report:  
http://localhost:8089/report/html/sifa.report_declaration1/70 

# Creer un simple module pour openERP 7

Le module s'appelle "FirseModule".
Voici les 4 fichiers qu’on doit creer :

puisque un module est paquage python il doit contenir ce fichier
__init__.py :
import mylibrary

Et le fichier qui donne la description sur votre module incluant (name,version ….etc)
__openerp__.py :
# -*- coding: utf-8 -*-

{
    'name': 'mylibrary',
    'version': '0.1',
    'category': 'Generic Modules/Others',
    'description': """ Test creation module
    """,
    'author': 'PM',
    'depends': ['base'],
    'data': ['mylibrary_view.xml'],
    'installable': True,
    'auto_install': False,
}

Au niveau de ce fichier on met tout notre ligique metier tous les classes
mylibrary.py :
# -*- coding: utf-8 -*-

from openerp.osv import fields, osv

class mylibrary_author(osv.osv):
    _name = 'mylibrary.author'
    _rec_name='lastname'
    _columns = {
        'firstname': fields.char('FirstName',size=64),
        'lastname': fields.char('LastName',size=64),
        'book_ids': fields.one2many('mylibrary.book','author_id','Books'),
    }
mylibrary_author()

class mylibrary_book(osv.osv): 
    _name = 'mylibrary.book'
    _columns = {
        'title': fields.char('Title',size=64),
        'genre': fields.char('Genre',size=64),
        'author_id': fields.many2one('mylibrary.author','Author',ondelete='cascade'),
    }

mylibrary_book() 



La vue qui va nous afficher les formulaires et les donnees
mylibrary_view.xml :
<?xml version="1.0" ?>

<openerp>
        <data>

    <record model="ir.ui.view" id="author_form"> 
        <field name="name">author.form</field> 
        <field name="model">mylibrary.author</field> 
        <field name="type">form</field> 
        <field name="arch" type="xml">
            <form string="Author" > 
                <field name="firstname"/>  
                <field name="lastname"/>  
                <notebook colspan="3">
                    <page string="Books">
                      <field name="book_ids"/> 
                    </page>
                </notebook>
            </form>
        </field>
    </record>

    <record model="ir.ui.view" id="author_tree">
        <field name="name">author.tree</field>
        <field name="model">mylibrary.author</field>
        <field name="type">tree</field> 
        <field name="arch" type="xml">
            <tree string="Author" > 
                <field name="firstname"/>
                <field name="lastname"/>
                <field name="book_ids"/> 
            </tree>
        </field>
    </record>

     <record model="ir.actions.act_window" id="action_author"> 
        <field name="name">Author</field> 
        <field name="res_model">mylibrary.author</field> 
        <field name="view_type">form</field> 
        <field name="view_mode">tree,form</field>
    </record>


    <record model="ir.ui.view" id="book_form">
        <field name="name">book.form</field>
        <field name="model">mylibrary.book</field>
        <field name="type">form</field>
        <field name="arch" type="xml">
            <form string="Book" >
                <field name="title"/>
                <field name="genre"/>
                <field name="author_id"/>
            </form>
        </field>
    </record>

    <record model="ir.ui.view" id="book_tree">
        <field name="name">book.tree</field>
        <field name="model">mylibrary.book</field>
        <field name="type">tree</field>
        <field name="arch" type="xml">
            <tree string="Book" >
                <field name="title"/>
                <field name="genre"/>
                <field name="author_id"/>
            </tree>
        </field>
    </record>

    <record model="ir.actions.act_window" id="action_book">
        <field name="name">Book</field>
        <field name="res_model">mylibrary.book</field>
        <field name="view_type">form</field>
        <field name="view_mode">tree,form</field>
    </record>


    <menuitem id="mylibrary" name="Mylibrary"/>
       <menuitem name="Mylibrary" id="section_main_menu_mylibrary" parent="mylibrary" />
        <menuitem name="Authors" id="choix_author" parent="section_main_menu_mylibrary" action="action_author"/>
       <menuitem name="Books" id="choix_book" parent="section_main_menu_mylibrary" action="action_book"/>

    </data>
</openerp>


'name': 'mylibrary', 
    'version': '0.1', 
    'category': 'Generic Modules/Others', 
