
def factory_new_partner():
    partner = {
        "name": "Pizzas Papito",
        "email": "contato@papito.com.br",
        "whatsapp": "11999999999",
        "business": "Restaurante",
    }

    return partner

def factory_dup_name():
    partner = {
        "name": "Adega do João",
        "email": "contato@joão.com.br",
        "whatsapp": "6199999999",
        "business":"Conveniência"
    },

    return partner

def factory_partner_list():
    p_list = [
        {
        "name": "Mercearia da Mary Jane",
        "email": "contato@mnj.com.br",
        "whatsapp": "6199999999",
        "business":"Conveniência"
        },
        {
        "name": "Mercadinho São Francisco",
        "email": "contato@msf.com.br",
        "whatsapp": "1199999999",
        "business":"Supermercado",
        },
        {
        "name": "Bom de prato",
        "email": "contato@bomdeprato.com.br",
        "whatsapp": "11999991003",
        "business": "Restaurante",
        },
    ]

    return p_list

def factory_enable_partner():
    partner = {
        "name": "Doceria Papito",
        "email": "doceria@yahoo.com.br",
        "whatsapp": "11999999999",
        "business": "Conveniência",
    }

    return partner

def factory_404_partner():
    partner = {
        "name": "Frangão",
        "email": "doceria@frangao.com.br",
        "whatsapp": "11999999999",
        "business": "Restaurante",
    }

    return partner


def factory_disable_partner():
    partner = {
        "name": "Mercado Note",
        "email": "contato@mnoite.com.br",
        "whatsapp": "11999999999",
        "business": "Supermercado",
    }

    return partner


def factory_remove_partner():
    partner = {
        "name": "Adega do Papito",
        "email": "contato@adp.com.br",
        "whatsapp": "11999999999",
        "business": "Conveniência",
    }

    return partner