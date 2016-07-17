/*
 * Copyright (C) 2016 nemumu
 */
#include <linux/module.h>

MODULE_LICENSE("GPLv2");

static int kit_init(void){
	printk(KERN_INFO "Netfilter Sample module init");
	return 0;
}

static void kit_exit(void){
	printk(KERN_INFO "Netfilter Sample module exit");
	
	return;
}

module_init(kit_init);
module_exit(kit_exit);

