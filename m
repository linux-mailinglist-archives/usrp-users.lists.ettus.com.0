Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E4ADDF18
	for <lists+usrp-users@lfdr.de>; Sun, 20 Oct 2019 17:19:34 +0200 (CEST)
Received: from [::1] (port=55306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMCzS-0007gq-KS; Sun, 20 Oct 2019 11:19:30 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:46424)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iMCzK-00072m-BZ
 for USRP-users@lists.ettus.com; Sun, 20 Oct 2019 11:19:22 -0400
Received: by mail-qk1-f181.google.com with SMTP id e66so9886093qkf.13
 for <USRP-users@lists.ettus.com>; Sun, 20 Oct 2019 08:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=+FA8f3f1Os66mLhDwdo4/17PaBrDLqJ126f5q867stU=;
 b=r3yvEz9l1zaS9HmHkyq6bUnOzaY6AA/cRt+34U/PxQnCBqLzLmovgbqa2r5WY+CIUO
 rP3QUpeu2tolxbACr31vFWhgRg/R2Y/4Hw2BujYtCuxiYQos2r+z7yUS7grgs/E8cHV6
 b9Tnr0OqV0aYbwpymKKTNLoHag0b36zGEpeUJtcRFZJ5bqhFMnhosctaYbi3G7Yei1Xh
 rV2suN1sPvWxWkZf7xrWJAbWOQfV48HuvWJDvDMpNHu0bfySWY+EM95t/yQ+LcQ4ivlp
 aBlNRDIiiRSgo/SB1x2spPccYPBgPj+rVW6CfMRuoGENovEtTraN4CO/Ifi1+6LoqHwA
 jrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=+FA8f3f1Os66mLhDwdo4/17PaBrDLqJ126f5q867stU=;
 b=cSn2TOVyiKaGrTRi0hf75tLqw3LXOGSWBtGL8Lt6KwysVsKc0K6aGwZaBJjAXN6zx3
 e/+9sjhgPgQLqgQCGEfRy0pV9rLlmTJYSmeNq2Xlpp0/huMTmmnc6nciguro8HtRZz8Y
 uaAZMdkDNI7KLWwkgN3o/9rSl5B6h1AP4sK6UcioLP8zC/avzlqQsU/n3TU7e3diPLqn
 cihv7ZmVEDAXik8RSXgJkUcVY0zt6FvPpX2S2d+1PtTReOvZOVWBJxZEfkYeAA5Oe1Rj
 L4z5BGJSzUDuRQlxg9WI8QoNqi/ZYmWbpvSNr2YuDquq/VR6PtG0+hKlfrNWC8/96mPI
 yurA==
X-Gm-Message-State: APjAAAWG5rePQhTgrZDL2fpObAgYFPl/FmQypDeHaik79/iuAfrvOUIk
 E6zwUAYeYP+duDN2oJKULt6q3wrUzAI=
X-Google-Smtp-Source: APXvYqzZ2OUmxwC1XEG828nKKwKtuBswrh+DsgP5FZOaS3jd+SHNkp7j1fbo+yN3A+RlPD+cI6cQ8A==
X-Received: by 2002:a37:4d8e:: with SMTP id
 a136mr17955860qkb.109.1571584721582; 
 Sun, 20 Oct 2019 08:18:41 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.gmail.com with ESMTPSA id c12sm6236287qkc.81.2019.10.20.08.18.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Oct 2019 08:18:41 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 20 Oct 2019 11:18:40 -0400
Message-Id: <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
In-Reply-To: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
To: =?utf-8?Q?Pablo_Mart=C3=ADnez_de_Leiva_D=C3=ADaz?=
 <pablo.mdiaz@alumnos.upm.es>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Setting tune freq error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: text/plain; charset="utf-8"
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

V2hpY2ggZGF1Z2h0ZXIgY2FyZHMgYXJlIHlvdSB1c2luZz8KCkNvdWxkIHlvdSBzaGFyZSB0aGUg
b3V0cHV0IG9mIHVoZF91c3JwX3Byb2JlIG9uIHRoZSBkZXZpY2U/CgoKU2VudCBmcm9tIG15IGlQ
aG9uZQoKPiBPbiBPY3QgMjAsIDIwMTksIGF0IDg6NDAgQU0sIFBhYmxvIE1hcnTDrW5leiBkZSBM
ZWl2YSBEw61heiB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdy
b3RlOgo+IAo+IO+7v0hpIGFsbCwKPiAKPiBXZSBoYXZlIGEgeDMxMCBTRFIsIHdlIGFyZSBvYnRh
aW5pbmcgSVEgc2FtcGxlcyBmcm9tIDQgY2hhbm5lbHMgYnV0IHdlIGFyZSBoYXZpbmcgcHJvYmxl
bXMgd2l0aCB0dW5lIGZyZXF1ZW5jeS4KPiAKPiBXaGVuIHdlIGFscmVhZHkgaGF2ZSBzZXQgdXAg
b25lIGZyZXF1ZW5jeSwgMTAwTWh6IGZvciBleGFtcGxlLCBhbmQgd2UgdHJ5IHRvIHR1bmUgYSBm
cmVxdWVuY3kgdmVyeSBkaXN0YW50IGZyb20gdGhlIGN1cnJlbnQsIDcwMG1oeiBmb3IgZXhhbXBs
ZSwgd2UgZ2V0IHRoaXMgZXJyb3I6Cj4gCj4gCj4gICB0ZXJtaW5hdGUgY2FsbGVkIGFmdGVyIHRo
cm93aW5nIGFuIGluc3RhbmNlIG9mICd1aGQ6OmlvX2Vycm9yJwo+ICAgd2hhdCgpOiAgRW52aXJv
bm1lbnRFcnJvcjogSU9FcnJvcjogQmxvY2sgY3RybCAoQ0VfMDFfUG9ydF80MCkgbm8gcmVzcG9u
c2UgcGFja2V0IC0gQXNzZXJ0aW9uRXJyb3I6IGJvb2woYnVmZikKPiAgIGluIHVpbnQ2NF90IGN0
cmxfaWZhY2VfaW1wbDxfZW5kaWFubmVzcz46OndhaXRfZm9yX2Fjayhib29sLCBkb3VibGUpIFt3
aXRoIHVoZDo6ZW5kaWFubmVzc190IF9lbmRpYW5uZXNzID0gKHVoZDo6ZW5kaWFubmVzc190KTE7
IHVpbnQ2NF90ID0gbG9uZyB1bnNpZ25lZCBpbnRdCj4gICBhdCAvYnVpbGQvdWhkLXluemJuOS91
aGQtMy4xNC4xLjEvaG9zdC9saWIvcmZub2MvY3RybF9pZmFjZS5jcHA6MTQyCj4gCj4gVGhpcyBp
cyB0aGUgZnVuY3Rpb24gd2UgdXNlIGZvciB0dW5pbmc6Cj4gCj4gYm9vbCBzZHJfc2V0X3R1bmVf
ZnJlcXVlbmN5KHVzcnBfMjk0NSogcmFkaW8sIGZsb2F0IGZyZXEsIGludCBjaGFubmVscykgewo+
IAo+ICAgICBib29sIHN1Y2Nlc3MgPSB0cnVlOwo+ICAgICBzdGQ6OmNvdXQgPDwgIlNldHRpbmcg
dHVuZSBmcmVxdWVuY3k6ICIgPDwgZnJlcTsKPiAgICAgdWhkOjp0dW5lX3JlcXVlc3RfdCB0dW5l
KGZyZXEpOwo+ICAgICBmb3IgKGludCBpID0gMDsgaSA8IGNoYW5uZWxzOyArK2kpIHsKPiAgICAg
ICAgIHJhZGlvLT51c3JwLT5zZXRfcnhfZnJlcSh0dW5lLCBpKTsKPiAgICAgICAgIGlmIChzdGQ6
OmFicyhyYWRpby0+dXNycC0+Z2V0X3J4X2ZyZXEoaSkgLSBmcmVxKSA+IDAuMDAwMSl7IC8vIEhl
cmUgd2UgY2hlY2sgaWYgdGhlIGNoYW5nZSBoYXZlIGJlZW4gZG9uZSBjb3JyZWN0bHkKPiAgICAg
ICAgICAgICBzdWNjZXNzID0gZmFsc2U7Cj4gICAgICAgICB9Cj4gICAgIH0KPiAgICAgcmV0dXJu
IHN1Y2Nlc3M7Cj4gfQo+IAo+IFdlIGhhdmUgdGhlIHJlbGVhc2UgdmVyc2lvbiAzLjE0LjEuMSBv
ZiBVSEQuCj4gCj4gSSBob3BlIHlvdSBjYW4gaGVscCB1cywgdGhhbmtzIGJlZm9yZWhhbmQuCj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20K
