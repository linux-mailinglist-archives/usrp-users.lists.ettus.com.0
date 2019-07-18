Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD176D632
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 23:04:45 +0200 (CEST)
Received: from [::1] (port=45830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoDZz-0004Cb-Sy; Thu, 18 Jul 2019 17:04:43 -0400
Received: from mail-wr1-f47.google.com ([209.85.221.47]:39084)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1hoDZu-0003ym-RE
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 17:04:38 -0400
Received: by mail-wr1-f47.google.com with SMTP id x4so30108115wrt.6
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 14:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=DLcI/BvqAkE7tRt/3wjX6oumVGZb7ZD0zcXs5Cb1K3Y=;
 b=usMjwe6m7s5KVQUOHwzW49+d0Izik3uFuMD6PMtJ8roGT2jSEzb2QGBdHQ8y/pP0CL
 PKKanX68RkjXLMtqNX+6YacBAX8+/7RIcbG1cjNupdFK4Vnu9J/WzHhsU8Ck3Zzu45my
 Q4xEqB4kRmnqe5w5n+OiWhQBSohQzEmH/vsTy9C+DLeZN7S8QZVROvCtVtuYfkY4g0Ml
 ZH4Fr0UxODIKdXjDug+sDLwZ0Cew4QfJeQjY4pea6aKQsRTACG83GF+dMGozVARBVv3I
 c1qQP9mQfFHSp2D66biKfDTrQe4w8D8FVNkTdfMttALqOSt1fM96pNrmyXYGy2ToBVDp
 s4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=DLcI/BvqAkE7tRt/3wjX6oumVGZb7ZD0zcXs5Cb1K3Y=;
 b=R030Mmu7tfND4mo8t3wRWHs/FAbciG+kab15PeK207uk6WKYVv65P+zHh9+xGFYEP6
 z2GSzkHfdBR1/a4GvXtI09UzWRl+xHGQ4h5etQI9/urjLYA7/PClteXlHgLdczMv/jmB
 HebDFSkvIV+4jOMNF5ARh1s3mvtyH+2g4FdfPUH1OSlwoM4BJIfJsdGcxiqCyPLIhOeU
 tqAwiRh15f6pqaSBO6TbP9CU2sNuTqUOCINTFMkO5CY2O7cAYdEXxvNVel1b2ZKhraQs
 N88aQRE0Lk0b13AQIzneM1bwUJmyPlH4E/BZMCWzbcs2WXsn7vMyLuBDEVeoD7R/f4fD
 bELw==
X-Gm-Message-State: APjAAAWlvlRQdZ97HVdHZ4fbVdOOD2kpRuCdfy5s4fZYMWgx3RowYuSX
 0fgr5RDHzwy1eBYYHFRtJpybFbWZ
X-Google-Smtp-Source: APXvYqyoca8Hcx8h3v18Df3b0q8ABwZeeWuSceQm/A+w15oZYTiiCnARibimXIkALk4tsOxnsQ9gOw==
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr53310591wro.33.1563483837796; 
 Thu, 18 Jul 2019 14:03:57 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-046-005-003-059.hsi8.kabel-badenwuerttemberg.de. [46.5.3.59])
 by smtp.googlemail.com with ESMTPSA id
 t185sm21790545wma.11.2019.07.18.14.03.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 14:03:57 -0700 (PDT)
Message-ID: <b738183536799608fb8bc13ed55756a67ad03bba.camel@ettus.com>
To: =?ISO-8859-1?Q?C=E9dric?= Hannotier <Cedric.Hannotier@ulb.ac.be>, 
 usrp-users@lists.ettus.com
Date: Thu, 18 Jul 2019 23:03:56 +0200
In-Reply-To: <fa2116e1dbbe2b6fa62a181551995721@imapproxy.vub.ac.be>
References: <fa2116e1dbbe2b6fa62a181551995721@imapproxy.vub.ac.be>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] USRP X310 send period
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

QXQgdGhlIHZlcnkgYmVuaWduIDIwIE1TL3MsIEknZCByZWFsbHkgc2F5IHlvdXIgZmlyc3Qgb3B0
aW9uIGlzIHRoZSB3YXkKdG8gZ28uIFRoZSByZXN0IHByb2JhYmx5IHdvbid0IHdvcmsgdmVyeSB3
ZWxsIGR1IHRvIHR1cm4gb24vb2ZmCmJlaGF2aW91ciByZXF1aXJpbmcgeW91IHRvIHplcm8gcGFk
IGEgYml0IHRvIGZsdXNoIHlvdXIgVFggZGF0YSBjaGFpbnMuCgpZb3UgY2FuIG9mIGNvdXJzZSBh
bHNvIHdyaXRlIGFuIFJGTm9DIGJsb2NrIHRvIHN0b3JlIGFuZCBnZW5lcmF0ZSBkYXRhCmluLUZQ
R0EsIGJ1dCByZWFsbHk6IGF0IDIwTVMvcyBqdXN0IGNvbnRpbm91c2x5IHN0cmVhbS4gRXZlbiBh
IGJvZy0Kbm9ybWFsIEdpZ2FiaXQgRXRoZXJuZXQgY2FyZCBoYXMgcGxlbnR5IGVub3VnaCBiYW5k
d2lkdGggdG8gZG8gdGhhdC4gSQpkb3VidCBzZW5kaW5nIGEgc2VxdWVuY2UgZnJvbSBSQU0gd2ls
bCBvY2N1cHkgbXVjaCBDUFUgb24geW91ciBob3N0IFBDLgoKQmVzdCByZWdhcmRzLApNYXJjdXMK
Ck9uIFRodSwgMjAxOS0wNy0xOCBhdCAyMjo1OCArMDIwMCwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlh
IFVTUlAtdXNlcnMKd3JvdGU6Cj4gRGVhciBhbGwsCj4gCj4gSSB3b3VsZCBsaWtlIHRvIHBlcmlv
ZGljYWxseSBzZW5kIGEgZnJhbWUgd2l0aCBhbiBVU1JQIFgzMTAgKGZyYW1lIAo+IGxlbmd0aDog
MzIwIHNhbXBsZXMsIHJhdGU6IDIwIE1TL3MsIHBlcmlvZDogMS01MDAgbXMpLiBIb3dldmVyLCBJ
IAo+IHN0cnVnZ2xlIHRvIGZpbmQgdGhlIGJlc3Qgd2F5IHRvIGltcGxlbWVudCBpdC4gV2hhdCBJ
IGhhdmUgdHJpZWQgc28KPiBmYXI6Cj4gCj4gICAxLiBBcHBlbmQgemVyb3MgdG8gdGhlIGZyYW1l
IHRvIHJlYWNoIHRoZSBleHBlY3RlZCBwZXJpb2QuCj4gSG93ZXZlciwgCj4gdGhpcyBjb25zdW1l
cyB0b28gbXVjaCBiYW5kd2lkdGggZHVlIHRvIHRoZSB6ZXJvcy4KPiAKPiAgIDIuIFVzZSB0eF9z
dHJlYW1lci0+c2VuZCgpIHdpdGggYSB0eF9tZXRhZGF0YV90LnRpbWVfc3BlYyBhbmQgCj4gdHhf
c3RyZWFtZXItPnJlY3ZfYXN5bmNfbXNnKCkuIFVzaW5nIHRoYXQsIG9ubHkgdGhlIGZyYW1lIGlz
IHNlbnQsIAo+IHNhdmluZyBtb3N0IG9mIHRoZSBiYW5kd2lkdGguIEhvd2V2ZXIsIHdpdGggc21h
bGwgcGVyaW9kcywgaXQgdGVuZHMKPiB0byAKPiBwcmludCBzb21lICdMJy4KPiAKPiAgIDMuIEJ1
ZmZlciBhIGJhdGNoIG9mIHNlbmQgcmVxdWVzdCBvbiB0aGUgVVNSUCwgdGhlbiB3YWl0IGEKPiBz
cGVjaWZpYyAKPiB0aW1lICh1c2luZyBlZy4gcmVjdl9hc3luY19tc2coKSB1bnRpbCB0aGUgcmV0
dXJuZWQgbWV0YWRhdGEKPiBjb250YWlucyAKPiB0aGUgcGVudWx0aW1hdGUgdGltZV9zcGVjIChJ
IGV4cGVjdCB0aGF0IHRoZSB0aW1lX3NwZWMgcmV0dXJuZWQgaXMKPiB0aGUgCj4gb25lIHNwZWNp
ZmllZCBpbiB0aGUgc2VuZCBtZXRhZGF0YSkpIGFuZCByZWRvLiBUaGUgaXNzdWUgaXMgdGhhdCBJ
Cj4gd2FzIAo+IG5vdCBhYmxlIHRvIGZpbmQgdGhlIGJ1ZmZlciBzaXplIChpcyBpdCByZWxhdGVk
IHRvIHRoZSAKPiB0eF9zdHJlYW1lci0+Z2V0X21heF9udW1fc2FtcHMoKT8pLiBJIHdvdWxkIGxp
a2UgdG8gZmlsbCB0aGUgYnVmZmVyIAo+IHdpdGhvdXQgb3ZlcmZsb3cuCj4gCj4gSSB3YXMgaG9w
aW5nIHRoYXQgSSBjb3VsZCBzYXZlIHRoZSBmcmFtZSBpbiBhbiBVU1JQJ3MgbWVtb3J5LCBhbmQK
PiB0aGVuIAo+IGFzayBpdCB0byBwZXJpb2RpY2FsbHkgc2VuZCB0aGUgZnJhbWUgd2l0aCBhIHNw
ZWNpZmljIHBlcmlvZC4gSXMgaXQgCj4gcG9zc2libGU/Cj4gCj4gSGVyZSBpcyBhbiBleGFtcGxl
IG9mICgyKToKPiAKPiB0ZW1wbGF0ZSA8dHlwZW5hbWUgc2FtcF90eXBlPgo+IHZvaWQgc2VuZF9m
cm9tX2ZpbGUoY29uc3QgdWhkOjp1c3JwOjptdWx0aV91c3JwOjpzcHRyICZ1c3JwLAo+ICAgICAg
ICAgICAgICAgICAgICAgIHVoZDo6dHhfc3RyZWFtZXI6OnNwdHIgdHhfc3RyZWFtLCBjb25zdAo+
IHN0ZDo6c3RyaW5nJiAKPiBmaWxlLAo+ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGRvdWJs
ZSBwZXJpb2QpCj4gewo+IHNpemVfdCBkYXRhX3NpemUgPSBnZXRfZmlsZV9zaXplPHNhbXBfdHlw
ZT4oZmlsZSk7Cj4gc3RkOjppZnN0cmVhbSBpbmZpbGUoZmlsZSwgc3RkOjppZnN0cmVhbTo6Ymlu
YXJ5KTsKPiBzdGQ6OnZlY3RvcjxzYW1wX3R5cGU+IGJ1ZmYoZGF0YV9zaXplKTsKPiBpbmZpbGUu
cmVhZChyZWludGVycHJldF9jYXN0PGNoYXIqPihidWZmLmRhdGEoKSksIAo+IChzdGQ6OnN0cmVh
bXNpemUpKGJ1ZmYuc2l6ZSgpKnNpemVvZihzYW1wX3R5cGUpKSk7Cj4gaW5maWxlLmNsb3NlKCk7
Cj4gc2l6ZV90IG51bV90eF9zYW1wcyA9IGJ1ZmYuc2l6ZSgpOwo+IHN0ZDo6Y291dCA8PCBmaWxl
IDw8ICIgIiA8PCBidWZmWzBdIDw8ICIgIiA8PCBudW1fdHhfc2FtcHMgPDwKPiBzdGQ6OmVuZGw7
Cj4gCj4gdWhkOjp0eF9tZXRhZGF0YV90IG1kOwo+IG1kLnN0YXJ0X29mX2J1cnN0ID0gdHJ1ZTsK
PiBtZC5lbmRfb2ZfYnVyc3QgICA9IHRydWU7Cj4gbWQuaGFzX3RpbWVfc3BlYyAgPSB0cnVlOwo+
IG1kLnRpbWVfc3BlYyAgICA9IHVzcnAtPmdldF90aW1lX2xhc3RfcHBzKCkrNS47Cj4gZG91Ymxl
IHRpbWVvdXQgPSBtZC50aW1lX3NwZWMuZ2V0X3JlYWxfc2VjcygpOwo+IHVoZDo6YXN5bmNfbWV0
YWRhdGFfdCBtZF9zdGF0dXM7Cj4gCj4gd2hpbGUgKG5vdCBzdG9wX3NpZ25hbF9jYWxsZWQpIHsK
PiAJdHhfc3RyZWFtLT5zZW5kKCZidWZmLmZyb250KCksIG51bV90eF9zYW1wcywgbWQpOwo+IAlp
ZiAodHhfc3RyZWFtLT5yZWN2X2FzeW5jX21zZyhtZF9zdGF0dXMsIHRpbWVvdXQpKSB7Cj4gCQlp
ZiAobWRfc3RhdHVzLmV2ZW50X2NvZGUgIT0gCj4gdWhkOjphc3luY19tZXRhZGF0YV90OjpldmVu
dF9jb2RlX3Q6OkVWRU5UX0NPREVfQlVSU1RfQUNLKSB7Cj4gCQkJc3RkOjpjZXJyIDw8ICJFcnJv
cjogIiA8PCBtZF9zdGF0dXMuZXZlbnRfY29kZQo+IDw8IHN0ZDo6ZW5kbDsKPiAJCQlleGl0KEVY
SVRfRkFJTFVSRSk7Cj4gCQl9Cj4gCX0gZWxzZSB7Cj4gCQlzdGQ6OmNlcnIgPDwgInRpbWVvdXQg
YmVmb3JlIHNlbnQiIDw8IHN0ZDo6ZW5kbDsKPiAJCWV4aXQoRVhJVF9GQUlMVVJFKTsKPiAJfQo+
IAo+IAl0aW1lb3V0ID0gMC4xOwo+IAltZC50aW1lX3NwZWMgKz0gcGVyaW9kOwo+IH0KPiB9Cj4g
Cj4gCj4gCj4gQmVzdCBSZWdhcmRzLAo+IEPDqWRyaWMKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4g
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
