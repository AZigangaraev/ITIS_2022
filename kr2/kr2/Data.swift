import Foundation


let json = """
[{
    "accounts": [
        {
            "user": {
                "phoneNumber": "+7 (447) 123-45-67",
                "nickname": "@Giorno",
                "realName": "Diego",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Giorno",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
                        },
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "Jolyne"
                        },
                        {
                            "title": "Jolyne",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                            "value": "Jotaro"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                            "value": "Jolyne"
                        },
                        {
                            "title": "Hol Horse",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png",
                            "value": "Star Platinum"
                        },
                        {
                            "title": "Kakyoin",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "Diego"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Jotaro",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png",
                            "value": "Silver Chariot"
                        },
                        {
                            "title": "Polnareff",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png",
                            "value": "Hermit Purple"
                        },
                        {
                            "title": "Jotaro",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png",
                "nickname": "@Emperor",
                "realName": "Johnny"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Iggy",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
                        },
                        {
                            "title": "Hermit Purple",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
                        },
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png",
                            "value": "Kakyoin"
                        },
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Iggy"
                        },
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                            "value": "The World"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Diego",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png",
                            "value": "Star Platinum"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
                        },
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "phoneNumber": "+7 (846) 123-45-67",
                "nickname": "@Giorno",
                "realName": "The World",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "The Fool"
                        },
                        {
                            "title": "Emperor",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Diego"
                        },
                        {
                            "title": "Josuke",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Diego",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        },
                        {
                            "title": "The World",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "DIO"
                        },
                        {
                            "title": "Polnareff",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Silver Chariot"
                        },
                        {
                            "title": "Emperor",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
                        },
                        {
                            "title": "Josuke",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png",
                            "value": "Josuke"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                "nickname": "@Josuke",
                "realName": "Kakyoin"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                            "value": "Kakyoin"
                        },
                        {
                            "title": "Jotaro",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
                        },
                        {
                            "title": "Hol Horse",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png",
                            "value": "Hermit Purple"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Star Platinum"
                        },
                        {
                            "title": "Emperor",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png"
                        },
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Jotaro"
                        },
                        {
                            "title": "Jolyne",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
                        },
                        {
                            "title": "Emperor",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png",
                            "value": "Johnny"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png",
                "nickname": "@Polnareff",
                "realName": "Silver Chariot"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Polnareff",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        },
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png",
                            "value": "Kakyoin"
                        },
                        {
                            "title": "Iggy",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Hol Horse",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png",
                            "value": "The World"
                        },
                        {
                            "title": "Iggy",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png",
                            "value": "Polnareff"
                        },
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Hermit Purple",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png",
                            "value": "Hol Horse"
                        },
                        {
                            "title": "Polnareff",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png",
                "nickname": "@Iggy",
                "realName": "Polnareff"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Jotaro",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/103.png"
                        },
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "Iggy"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Jolyne",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
                        },
                        {
                            "title": "Hol Horse",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png",
                            "value": "The Fool"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        },
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
                        },
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png",
                            "value": "Justice"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "phoneNumber": "+7 (900) 123-45-67",
                "nickname": "@Iggy",
                "realName": "Hermit Purple",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Justice",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
                        },
                        {
                            "title": "Josuke",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "The Fool",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        },
                        {
                            "title": "Giorno",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
                        },
                        {
                            "title": "DIO",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/100.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Hol Horse",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "Johnny"
                        },
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        },
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png",
                            "value": "Star Platinum"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "phoneNumber": "+7 (117) 123-45-67",
                "nickname": "@TheWorld",
                "realName": "Silver Chariot",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/110.png"
                        },
                        {
                            "title": "Hermit Purple",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
                        },
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/107.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Giorno",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png",
                            "value": "DIO"
                        },
                        {
                            "title": "Star Platinum",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png",
                            "value": "Silver Chariot"
                        },
                        {
                            "title": "Kakyoin",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/105.png",
                            "value": "Iggy"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Silver Chariot",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png",
                            "value": "Jonathan"
                        },
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Diego"
                        },
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        }
                    ]
                }
            ]
        },
        {
            "user": {
                "phoneNumber": "+7 (255) 123-45-67",
                "nickname": "@TheFool",
                "realName": "Kakyoin",
                "avatar": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png"
            },
            "settings": [
                {
                    "items": [
                        {
                            "title": "Jolyne",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png"
                        },
                        {
                            "title": "Johnny",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Star Platinum"
                        },
                        {
                            "title": "Polnareff",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/102.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "Jonathan",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        },
                        {
                            "title": "Giorno",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/101.png",
                            "value": "Star Platinum"
                        },
                        {
                            "title": "Kakyoin",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/108.png"
                        }
                    ]
                },
                {
                    "items": [
                        {
                            "title": "The Fool",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/104.png",
                            "value": "Jotaro"
                        },
                        {
                            "title": "Josuke",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/109.png",
                            "value": "Giorno"
                        },
                        {
                            "title": "Kakyoin",
                            "icon": "https://raw.githubusercontent.com/AZigangaraev/images/main/106.png"
                        }
                    ]
                }
            ]
        }
    ]
}]
"""


