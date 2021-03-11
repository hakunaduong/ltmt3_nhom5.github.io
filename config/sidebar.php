<?php
return [
    [
        'name' => 'admin_sidebar.sub_product',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'admin_sidebar.attribute',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1,2],
            ],
            [
                'name'  => 'admin_sidebar.category',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1,2],
            ],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'admin_sidebar.product',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
            ],
			[
                'name'  => 'admin_sidebar.rating',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
			[
                'name'  => 'admin_sidebar.comment',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
        ]
    ],
    [
        'name' => 'admin_sidebar.sub_article',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'admin_sidebar.menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa-newspaper-o',
				'level'  => [1,2],
            ],
            [
                'name'  => 'admin_sidebar.article',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa-edit',
				'level'  => [1,2],
            ],
        ]
    ],
	[
		'name' => 'admin_sidebar.sub_user',
		'list-check' => ['user','ncc'],
		'icon' => 'fa fa-user',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'admin_sidebar.user',
				'route' => 'admin.user.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'admin_sidebar.ncc',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			]
		]
	],
    [
        'name' => 'admin_sidebar.sub_transaction',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'admin_sidebar.transaction',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ]
        ]
    ],
//	[
//        'name' => 'Kho',
//        'list-check' => ['inventory','import','export','invoice_entered'],
//        'icon' => 'fa-folder-open-o',
//		'level'  => [1,2],
//        'sub'  => [
//            [
//                'name'  => 'Nhập kho',
//                'namespace' => 'import',
//                'route' => 'admin.invoice_entered.index',
//                'icon'  => 'fa-plus-square',
//				'level'  => [1,2],
//            ],
//			[
//				'name'  => 'Xuất kho',
//				'namespace' => 'export',
//				'route' => 'admin.inventory.out_of_stock',
//				'icon'  => 'fa-plus-square',
//				'level'  => [1,2],
//			],
//        ]
//    ],
    [
        'name'  => 'admin_sidebar.sub_system',
        'label' => 'true'
    ],
	[
		'name' => 'admin_sidebar.sub_admin',
		'list-check' => ['account-admin','permission','role'],
		'icon' => 'fa-sitemap',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'admin_sidebar.admin_permission',
				'namespace' => 'permission',
				'route' => 'admin.permission.list',
				'icon'  => 'fa-ban',
				'level'  => [1,2],
			],
			[
				'name'  => 'admin_sidebar.admin_role',
				'namespace' => 'role',
				'route' => 'admin.role.list',
				'icon'  => 'fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'admin_sidebar.admin_admin',
				'namespace' => 'account-admin',
				'route' => 'admin.account_admin.index',
				'icon'  => 'fa-users',
				'level'  => [1,2],
			],
		]
	],
	[
		'name' => 'admin_sidebar.sub_data_system',
		'list-check' => ['slide','event','page-static','statistical'],
		'icon' => 'fa  fa-usd',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'admin_sidebar.slide',
				'route' => 'admin.slide.index',
				'namespace' => 'slide',
				'level'  => [1,2],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'admin_sidebar.event',
				'route' => 'admin.event.index',
				'namespace' => 'event',
				'level'  => [1,2],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'admin_sidebar.page_static',
				'route' => 'admin.static.index',
				'namespace' => 'page-static',
				'level'  => [1,2],
				'icon'  => 'fa-circle-o'
			]
		]
	],
];
