Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B770C27427A
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 14:52:26 +0200 (CEST)
Received: from [::1] (port=54502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKhmT-00056W-62; Tue, 22 Sep 2020 08:52:25 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:40876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kKhmO-0004xu-W9
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 08:52:21 -0400
Received: by mail-ed1-f41.google.com with SMTP id t16so16052691edw.7
 for <usrp-users@lists.ettus.com>; Tue, 22 Sep 2020 05:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=LoKCe0mpHAz0isWN+rzoNir5aTGmE8+ki4pe7GahToQ=;
 b=EqH9a80V2kCEP3TnkCqzOz0lfiKxIP/U1mD3gO81mwUvAaRF+Gt5vHyRJ+BZ+BDNyC
 JP/x+ZZvj/SYnKI0B0B1Ax3d2B2AbDnrFjAUYsyjnFsuEr8Kw4F4r2VWIp5DfXL66Dih
 INJvzAXlfr+mBHqpYVgW3oZeimscYOPK83s4cCAinATy0OcIdFTLc3rfZeN5c7i1oWuA
 yo1/BN+eBafw3pqg22cGAxDyDw1odAcSYovchdESdQGayINTmC6S/Eqle03qkhYIvYSr
 +3j7ptKJrMuJGDe9ys/mxT9sMATivwU89YAQjVokjCMZ5WGW6JGGYYNlCsGyMspg9yGf
 Nl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LoKCe0mpHAz0isWN+rzoNir5aTGmE8+ki4pe7GahToQ=;
 b=kDt4VrIbWDMWmpx5zhn/IP10QaOQmquUe+mPo0YcJebDRs5vx12pNPgagNAmCEwsk7
 ud4W+RBnaOEcCnvttkOXmAz7qwGd4plEBnADk1Ry4+Ag207Hiz4j0c1lTYYS+A9cICMp
 NoFXwioJaEspicWuRAIMu746FE5QKZijKvsWymXhJzboXlq6MeiJKkw3PEbEfvjWKO0i
 f3mX8Y9smGLvmC9Hy2ZXaZsilVkFb5oHvyL9U1pyakIlIPU+ZbI0lJl2vGqdjvxzv+uE
 wWN0RlQm02s1k5bO6WTAJ7cdKdwICu7UH+ehrz9TRrYDwnKNzGDFkj3r5sYzs7CoXJzC
 Q2Jw==
X-Gm-Message-State: AOAM530yfGGLpfirgcs3vBiz5KZyFMyNUPNtj5c3b5sjx0dT/gSPC1WK
 wKxj1pH71gmX2GwxrzuFWBuEIxvdXpWOsdA00Vw=
X-Google-Smtp-Source: ABdhPJzLdT/coTra8Y1+x7++irH0SSb65hfhqfUT1KrdxRCbAwieQQbNifoYALpz8HzHx2YmpzAqMQ==
X-Received: by 2002:a50:a418:: with SMTP id u24mr3785031edb.103.1600779099563; 
 Tue, 22 Sep 2020 05:51:39 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-144.hsi.kabel-badenwuerttemberg.de. [46.223.163.144])
 by smtp.gmail.com with ESMTPSA id j4sm5642554eds.36.2020.09.22.05.51.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Sep 2020 05:51:38 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F6566A9.5090205@gmail.com>
 <HK0PR03MB5091857473EEA99A15FDE29C9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Message-ID: <f9aa10db-8d4e-51ea-5652-979d9939a2ac@ettus.com>
Date: Tue, 22 Sep 2020 14:51:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <HK0PR03MB5091857473EEA99A15FDE29C9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] 
 =?utf-8?b?5Zue5aSNOiDlm57lpI06IHdoYXQgaXMgdGhlIFRQ?=
 =?utf-8?q?M_used_for_N310?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SGkgSmFtZXMsCgpyZTpzdG0zMiBpbWFnZToKCnVtLCBpZiB5b3Ugd2FudCB0byBtb2RpZnkgdGhl
IHNvdXJjZSBjb2RlLCBiaW5hcmllcyB3b24ndCBoZWxwIHlvdS4gSWYKdGhlcmUncyBub3RoaW5n
IHlvdSB3YW50IHRvIG1vZGlmeSwgeW91IGRvbid0IG5lZWQgdG8gZmxhc2gsIGVpdGhlci4KClNp
bmNlIHRoZXNlIGltYWdlcyBhcmUgbmVhcmx5IGltcG9zc2libGUgdG8gYnJlYWssIGFuZCBub24t
dHJpdmlhbCB0bwpmbGFzaCB3aXRob3V0IGRlZGljYXRlZCBwcm9ncmFtbWVycy9jb25uZWN0b3Jz
LCB3aGF0J3MgdGhlIHVzZSBjYXNlIGZvcgp3YW50aW5nIGJpbmFyaWVzPwoKQmVzdCByZWdhcmRz
LAoKTWFyY3VzCgpPbiAyMC4wOS4yMCAxNDo0OSwgVGhvbWFzIGphbWVzIHZpYSBVU1JQLXVzZXJz
IHdyb3RlOgo+IEhpIE1hcmN1cywKPiBpcyB0aGVyZSBjb21waWxlZCBzdG0zMiBpbWFnZXMgYW5k
IGl0cyB1cGRhdGUgbWV0aG9kIGF2YWlsYWJsZS4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ILeivP7IyzogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNv
bT4KPiC3osvNyrG85DogMjAyMMTqOdTCMTnI1SAxMDowMgo+IMrVvP7IyzogVGhvbWFzIGphbWVz
IDxqYW1lc190dGZ1bkBob3RtYWlsLmNvbT47IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiDW98ziOiBSZTogu9i4tDogW1VTUlAtdXNlcnNd
IHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBOMzEwCj4KPiBPbiAwOS8xNy8yMDIwIDExOjE5IFBN
LCBUaG9tYXMgamFtZXMgd3JvdGU6Cj4gSEkgTWFyY3VzLAo+IHRoYW5rcy4gYW5kIGlzIHRoZSBz
b3VyY2UgY29kZSBvZiBzdG0zMiAgYW5kIGNwbGQgIGF2YWlhYmxlPwo+Cj4gQ2hlY2sgb3V0Ogo+
Cj4gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdXNycC1maXJtd2FyZQo+Cj4gaHR0
cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvbWV0YS1zdG0zMgo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ILeivP7IyzogVVNSUC11c2VycyA8dXNycC11c2Vycy1i
b3VuY2VzQGxpc3RzLmV0dHVzLmNvbT48bWFpbHRvOnVzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5l
dHR1cy5jb20+ILT6se0gTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT48bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+ILei
y83KsbzkOiAyMDIwxOo51MIxN8jVIDIzOjI2Cj4gytW8/sjLOiB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IDx1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbT48bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+INb3zOI6
IFJlOiBbVVNSUC11c2Vyc10gd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yIE4zMTAKPgo+IE9uIDA5
LzE3LzIwMjAgMDg6NDEgQU0sIFRob21hcyBqYW1lcyB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBI
aSwKPiBpIGxlYXJuZWQgdGhhdCBOMzEwIGhhdmUgdGhlIHZlcnNpb24gd2l0aCBvciB3aXRob3V0
IFRQTS4gaSB3YW50IHRvIGtub3cgbW9yZSBhYm91dCBpdC4gd2hhdCBpcyB0aGUgVFBNIHVzZWQg
Zm9yPwo+Cj4gTm90aGluZyBhcyBmYXIgYXMgSSBrbm93LS1pdCdzIGF2YWlsYWJsZSB0byBiZSB1
c2VkIGZvciBjdXN0b20gYXBwbGljYXRpb25zLgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
