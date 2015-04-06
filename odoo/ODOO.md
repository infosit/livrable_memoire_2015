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


#Enlever la barre  "your Odoo is not supported ..."
- Récupérer le module oerp_no_phoning_home 
git clone https://bitbucket.org/BizzAppDev/oerp_no_phoning_home.git

- copier le répertoire /oerp_no_phoning_home dans le répertoire /addons du serveur Odoo   (ou répertoire dédié aux addons non officiels).

- Faire une mise à jour des modules
- Installer le module
source : http://lolierp.blogspot.fr/2015/01/odoo-8-bloquer-le-message-your-odoo-is.html

#Creer un simple module pour odoo 8
__init__.py 
import mylibrary2

__openerp__.py 
# -*- coding: utf-8 -*-

{
    'name': 'mylibrary2',
    'version': '0.1',
    'category': 'Generic Modules/Others',
    'description': """ Test creation module new api Odoo v8
    """,
    'author': 'PMA',
    'depends': ['base'],
    'data': ['mylibrary2_view.xml'],
    'installable': True,
    'auto_install': False,
}

mylibrary2.py 
(ce fichier est impacté par les nouvelles api)
# -*- coding: utf-8 -*-
from openerp import models, fields

class author(models.Model):
    _name = 'mylibrary.author'
    _rec_name = 'lastname'
    firstname = fields.Char('FirstName', required=True)
    lastname = fields.Char('LastName', required=True)  
    book_ids = fields.One2many('mylibrary.book','author_id','Books')
  
class book(models.Model): 
    _name = 'mylibrary.book'
    title = fields.Char('Title', required=True)
    genre = fields.Char('Genre', required=True)
    author_id = fields.Many2one('mylibrary.author','Author',ondelete='cascade')

mylibrary2_view.xml 
<?xml version="1.0" ?>

<openerp>
        <data>
    <record model="ir.ui.view" id="author_form"> 
        <field name="name">author.form</field> 
        <field name="model">mylibrary.author</field> 
        <field name="arch" type="xml">
            <form string="Author"> 
                <label string="First Name" />
                <field name="firstname"/> 
                <label string="Last Name" /> 
                <field name="lastname"/>  
                <notebook colspan="3"
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
        <field name="arch" type="xml">
            <form string="Book" >
                <label string="Title" />
                <field name="title"/>
                <label string="Genre" />
                <field name="genre"/>
                <label string="Author" />
                <field name="author_id"/>
            </form>
        </field>
    </record>

    <record model="ir.ui.view" id="book_tree">
        <field name="name">book.tree</field>
        <field name="model">mylibrary.book</field>
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
La sollution de  “ field larger than field limit (131072). “
Editer le medel /opt/odoo/odoo-server/addons/base_import/models.py et ajouter les lignes suivantes au debut du fichier ;

import sys
maxInt = sys.maxsize
decrement = True
while decrement:
    # decrease the maxInt value by factor 10 
    # as long as the OverflowError occurs.
    decrement = False
    try:
        csv.field_size_limit(maxInt)
    except OverflowError:
        maxInt = int(maxInt/10)
        decrement = True
Installer DIA sur ubuntu

Dans logitheque chercher DIA et installer
ajouter codegen_openerp.py dans DIA qui nous permet de exporter les projets openerp

telecherger codegen_openerp.py dans le lien suivant : 
http://nullege.com/codes/show/src%40o%40p%40openerp-extra-6.1-HEAD%40openerp_dia%40codegen_openerp.py/21/dia/python

copier le fichier dans le lien /usr/share/dia/python
dans dia 
boite de dialogue -> python console
tappez    import codegen_openerp.py

# Vue html rapport 
http://localhost:8089/report/html/sifa.report_declaration1/70
