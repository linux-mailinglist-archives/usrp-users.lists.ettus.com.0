Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DD650D50B
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 22:16:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CF0B384E4C
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 16:16:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650831406; bh=DTerx++FLTc6BMm8CbKj5T+VxNCmhr8fTFRQertl5B8=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ptUQfrKX/Q/NMfjc96Zi1NSpkzu6H7u43meK2v0Mrnj97B48nHnH7+4m7BCt4HByp
	 VVuLPHE5+bMiaDi8c/aFvi/UcO0prEqj6sSopBM/Hgrf6PAJ5HWFDBqc3o1nc3cCdS
	 xWKTSywUn18Y/EXQVUpM0Sb+uMLHxUmrjiuw67O5lP63fYVQejLKR+YI68hytIElc3
	 piUcfu5LgOGlWtsrBREguhrfCX0qkiQ9dYZvOnZwiCR8GhaR0g6EO9JEbPhLUt1ZW7
	 Ch95zpi55890uXPeNp91dorNKr2CvHHyDaarP3A7MxzBTVS+0XwCGjEwpRc1RpIlBq
	 hQzYfIHa4tDOA==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D9B8383BD6
	for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 16:15:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P/F3HKRp";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id t11so2237642qto.11
        for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 13:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=iDwjOMKUlwNQBh9CE/Xi37Td+z1tMlDVTNtwgnqdIrY=;
        b=P/F3HKRprw0Z50UGZSfLS8Xes9sLPA8T0LT5C4mg/W919Ww/gCvQ+4pF9Q7ymJ/GP5
         sEcojXVhrfvnFj67sembi/JG0qHBTcg+8sK33HlMR4w/0D0RP5kR+6UZok+xdObo5gMm
         ZU21oia2eP6TZAfhfJcJm5mEHJoCUa/fmlQjmhmWUcp+J4MvFxbfVktc9/Jzh6uic/W8
         QiLC9NK8V0IZUOVqICl0x/ijAQuiiJcYLotisMzv/oB1oTNO38dW507IhTNXXDYu32NV
         TqCCKvW+HYR8g9EGmbSXNS+pL5UPIFqSRo0JMGqDfiLL7rmXeCkDW+Jwe8e5yW71tvbA
         8dxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=iDwjOMKUlwNQBh9CE/Xi37Td+z1tMlDVTNtwgnqdIrY=;
        b=cpW8R1tXBFDLzWmkHnUVrEP0+k2+w+UVjJmPZ9B8KdcHdg5AybffnY+5W1EA8HgauT
         eYLlQYa7WKlZcoyHI8A5NoWZG/u4ZhC8eEohxxKGj7UeTVsBQvLNkQNYZTQOqBDYKiWr
         6ZhXW4Hs94YDb71zoffLxNyEN6GFLpEb8zNt8pJvJsQyE57VzbVxjbPI7A9ocaiLD81A
         Ey2lmY9BNju7e2X0H0IY0LdWxxqkgvyKqHArS7dvseutU/tkWIvSZuIwauLuoIrBjpPj
         Ui9qVhPFDdDZX4ZeaaPFsoqWrMHc//Dc21hjZLezORiibWi5L8dyfv5xrdGBORcigYPK
         V8ow==
X-Gm-Message-State: AOAM5316ndPlHHcakfgx6JclRDmneclsE+lC7FsQKsuwWBW3O74p75fV
	uqOkCcVthN85Jf95m/nKbec=
X-Google-Smtp-Source: ABdhPJyM0pkxGCH6NUnOz5U5VroZhb2F9TShzLnBuAUG2wbDI4+14KF7am9ZzfHJltffEg31fB1MBA==
X-Received: by 2002:a05:622a:95:b0:2f1:fa51:be58 with SMTP id o21-20020a05622a009500b002f1fa51be58mr9853229qtw.564.1650831340755;
        Sun, 24 Apr 2022 13:15:40 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id h5-20020a05622a170500b002f33ec7a932sm5325308qtk.79.2022.04.24.13.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 13:15:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 24 Apr 2022 16:15:39 -0400
Message-Id: <2299DA86-434B-4FB9-8414-7311746868E0@gmail.com>
References: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
In-Reply-To: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
X-Mailer: iPhone Mail (19E258)
Message-ID-Hash: VUSXLHOWKFPHTMWEJHBW2GVZY6WPDH2Y
X-Message-ID-Hash: VUSXLHOWKFPHTMWEJHBW2GVZY6WPDH2Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid key
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VUSXLHOWKFPHTMWEJHBW2GVZY6WPDH2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGlkIHlvdSBhbHNvIHVwZ3JhZGUgdGhlIGZpcm13YXJlIGFuZCBGUEdhIG9uIHRoZSBYMzAwIGFu
ZCBwb3dlciBjeWNsZT8NCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEFwciAyNCwgMjAy
MiwgYXQgMzoyMyBQTSwgTmlrb3MgQmFsa2FuYXMgPG5iYWxrYW5hc0BnbWFpbC5jb20+IHdyb3Rl
Og0KPiANCj4g77u/SGksDQo+IA0KPiBBZnRlciB1cGdyYWRpbmcgdG8gdWhkIDMuMTUuMCBJIGdl
dCB0aGUgZm9sbG93aW5nIGVycm9yIHdoZW5ldmVyIEkgdHJ5DQo+IHRvIGFjY2VzcyBteSBYMzAw
Og0KPiANCj4gU3VuIEFwciAyNCAyMjoxMzo1NyAyMDIyIFswMF0gWyFdIHVzcnAuYzoxMTU6dWhk
X2luaXQgRmFpbGVkIHRvIGNyZWF0ZQ0KPiBVU1JQICgxMSkuIEludmFsaWQga2V5IGZvciBkaWN0
aW9uYXJ5IG9iamVjdCAoaW5jbHVkZXMgcHJvcGVydHkgdHJlZSkuDQo+IA0KPiBXaGF0IHNob3Vs
ZCBJIGRvPw0KPiANCj4gVElBDQo+IE5pa29zDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
