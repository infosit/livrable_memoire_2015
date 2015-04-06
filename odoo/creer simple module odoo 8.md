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
