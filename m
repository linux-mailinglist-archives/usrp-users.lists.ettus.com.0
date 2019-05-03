Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1691F1353D
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 00:08:06 +0200 (CEST)
Received: from [::1] (port=35508 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMgLV-0006rp-8d; Fri, 03 May 2019 18:07:57 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:39047)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hMgKw-0006bH-SB
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 18:07:52 -0400
Received: by mail-wm1-f54.google.com with SMTP id n25so8259667wmk.4
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 15:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=oKnST7nXJZv1/yAExxfAkzk0kwcXny5SElQIyTCUgvQ=;
 b=laIFll48e0WZcUrmyEiiHxuKcemLoHML4jb9RByrFjOdJxBTi/H71pqGj72cB4+LZh
 gkGNYxoncf6lr6T7V7aW/lTcLoMYa/UTf27Yk1lwR1nOMIxWi+1YAT7vavp5cXo6nEWn
 /rSYIQyeNi0HZVebmS9gKzIIHeCo7Vt9TLNNNjPzWwuueQZElY7UIFqmWjI4668PM0QR
 bcTP4QuebgrhoX/0T/lBlCfuoZSzokGyR9Rr3BHPdvhKahajGAHaq6OIpCPsfmxt9X7U
 9uzdISF/6tKiHkQXk7A8Li/hFmqYSPpVJYbt90T5vBMdmaggFh6s71JZJHs9bn4EPQ5j
 wxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=oKnST7nXJZv1/yAExxfAkzk0kwcXny5SElQIyTCUgvQ=;
 b=ECIj19UxJHe9AMjTUIIbWHFl6cPdMsTP1VP2Jam7i+kUKgIODcQHMl0sXYYXnksiJu
 XvC3HYevT2Xesa8FLpb5Hosg+If9JeNUdFHTbfHeNv9JTdqgff1WQ4kErchAty2zlbQ8
 qNB8FyFOpwclyZw8gIINJphNEkAtArN6KaLb298MUN0OkkCh40BhjTg/IQLIZxFbXVzK
 J3zSjTN9iTMOqbx9KFPSJOSFr4z6atKtHj3bbiAJiIj3bWgpx/rl+8d6yfi3ySfRh+xg
 WJtpoyBM7Vs70fbiIINEFyZxmzkxt+d5t++MKUhX22f8m5tHoSJxiAYNo6QbkVLx94WX
 fl5w==
X-Gm-Message-State: APjAAAUkTCtuxJvl5xUMzA7K2e8ACiyAhKgMqObjUVGkDwLLOkgqMIcW
 eU03MvHt//EzerrMu2WYgbHtc+LxnAVFiw==
X-Google-Smtp-Source: APXvYqx0sWN7ML54lSDaTS6gkx8s+LpB1Hhjn5Jp+JCmGrI7WjstZKfJuQjYXfcaAqcV4FYbDxBPRw==
X-Received: by 2002:a1c:f205:: with SMTP id s5mr7485797wmc.131.1556921201838; 
 Fri, 03 May 2019 15:06:41 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id d7sm4242005wrc.32.2019.05.03.15.06.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 03 May 2019 15:06:41 -0700 (PDT)
Message-ID: <96553aebb12616f8d60c0b5344aaf886dc5afb90.camel@ettus.com>
To: =?UTF-8?Q?=E5=BA=94=E5=B1=B1=E5=B7=9D?= <ying2011@126.com>, 
 usrp-users@lists.ettus.com
Date: Sat, 04 May 2019 00:06:40 +0200
In-Reply-To: <54DEBAC2-7025-45CC-BCEB-7336CF6E3EA2@126.com>
References: <54DEBAC2-7025-45CC-BCEB-7336CF6E3EA2@126.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Python API about the recv() function
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

SGVsbG8sCgp3aGVuIGFpbWluZyBmb3IgaGlnaCBJTyB0aHJvdWdocHV0LCBQeXRob24gaXMgYXQg
dGhlIG1vbWVudCBub3QgdGhlCmxhbmd1YWdlIG9mIGNob2ljZS4KWW91IGRvbid0IG5lZWQgdG8g
a25vdyBtdWNoIEMrKyB0byBtYWtlIGFuIGV4YW1wbGUgd29yazogdGhlCnJ4X3NhbXBsZXNfdG9f
ZmlsZXMgZXhhbXBsZSB0aGF0IFVIRCBpbnN0YWxscyBjYW4gc2F2ZSBkaXJlY3RseSB0byBkaXNr
CmluIGFueSBDUFUgZm9ybWF0LgoKQnV0OiBob25lc3RseSwgYSBVU0IzIGhhcmQgZGlzayB2ZXJ5
IGxpa2VseSB3b24ndCBzdXN0YWluIGV2ZW4gMTIzCk1CL3MsIGluIG15IGV4cGVyaWVuY2UuIFlv
dSBuZWVkIGZhc3RlciBzdG9yYWdlOyBhbiBTU0QgaXMgZGVzaXJhYmxlCihhcyBldmVuIGZhc3Qg
aW50ZXJuYWwgaGFyZCBkaXNrcyBiYXJlIGV4Y2VlZCAyMDAgTUIvcyBldmVuIG9ubHkgaW4Kc2hv
cnQgYnVyc3RzKSwgYW5kIFVTQjMgaXNuJ3QgZGVzaXJhYmxlIGF0IGFsbC4gRG8gYSBiZW5jaG1h
cmsgd2l0aAp5b3VyIHN0b3JhZ2UgZmlyc3Qg4oCTIHdpbGwgaXQgZXZlbiB0aGVvcmV0aWNhbGx5
IGFjaGlldmUgdGhlIHdyaXRlIHJhdGUKeW91IG5lZWQ/CgpGb3IgaG93IGxvbmcgZG8geW91IHBs
YW4gdG8gcmVjb3JkIGR1YWwtY2hhbm5lbCByZWNvcmQgMzAuNzIgTUh6IGF0Cm9uY2U/IFRoYXQg
d2lsbCBhbGxvdyB5b3UvdXMgdG8gY2FsY3VsYXRlIHdoZXRoZXIgdXNpbmcgUkFNIGJ1ZmZlcmlu
ZwptaWdodCBiZSBhIHNvbHV0aW9uLgoKQmVzdCByZWdhcmRzLApNYXJjdXMKCk9uIFNhdCwgMjAx
OS0wNS0wNCBhdCAwNDo0OCArMDgwMCwg5bqU5bGx5bedIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+
IEhlbGxvICwgSeKAmW0gYSBiZWdpbm5lciBvZiB0aGUgVVNSUCBhbmQgVUhEIHNvZnR3YXJlLiBJ
4oCZbSBzb3JyeSBsIG1heQo+IGRlbGl2ZXIgbXkgcXVlc3Rpb24gdW5jbGVhcmx5IHdpdGggbXkg
YnJva2VuIEVuZ2xpc2guCj4gCj4gCj4gV2hhdCBJIHdhbnQ6Cj4gSSBuZWVkIHRvIHJlY2VpdmUg
dGhlIHJlYWwtdGltZSByYWRpbyBzaWduYWxzIHdpdGggYSBCMjEwIFVTUlAKPiBkZXZpY2UsIGFj
Y29yZGluZyB0byBteSBzYW1wbGUgcmF0ZSxJIG5lZWQgYW4gZXh0ZXJuYWwgaGFyZCBkaXNrIHRv
Cj4gYWNoaWV2ZSBhdCBsZWFzdCAyNDUuNzZNQi9zIHVzaW5nIGZjMzIgaW4gbXkgaG9zdC4gIEJ1
dCB0aGUgVVNCMy4wCj4gaGFyZCBkcml2ZXIgSSAgY29ubmVjdGluZyB0byB0aGUgaG9zdCBvbmx5
IGdldCAxODBNQi9zIGluIHdyaXRlIG1vZGUuCj4gVGhlcmVmb3Jl77yMSSB3YW50IGNoYW5nZSB0
aGUgQ1BVX2Zvcm1hdCBmcm9tIGZjMzIgdG8gc2MxNiB0byBkZWNyZWFzZQo+IHRoZSBsb2FkIGlu
IHRoZSBVU0IzLjAgdHJhbnNtaXNzaW9uLgo+IAo+IAo+IFdoYXQgcHJvYmxlbSBJIGNvbmZyb250
ZWQ6Cj4gSeKAmW0gbm90IGZhbWlsaWFyIHdpdGggQ1BQIGxhbmd1YWdlLCBTbyBJIGNob29zZSB0
byBkcml2ZSB0aGUgQjIxMAo+IHdpdGggcHl0aG9uIEFQSS5XaGVuIEkgcmVmZXIgdG8gdGhlIHNv
dXJjZSBjb2RlIGluIEdpdGh1Yi9VSEQgLCBJCj4gZmluZCBhbiBleGFtcGxlIGluIC9VSEQvaG9z
dC9weXRob24vdXNycC5weS4gSXQgdGVsbHMgbWUgaG93IHRvCj4gaW5pdGlhbGl6ZSBhIFJYIHN0
cmVhbWVyIGFuZCBzdGFydCByZWNlaXZpbmcgc2FtcGxlcy5UaGVzZSBjb2RlIGFyZQo+ICAKPiDi
gKYuCj4gc3RfYXJncyA9IGxpYi51c3JwLnN0cmVhbV9hcmdzKCJmYzMyIiwgInNjMTbigJ0pCj4g
4oCmLgo+IAo+IHJlY3ZfYnVmZmVyID0gbnAuemVyb3MoKGxlbihjaGFubmVscyksIGJ1ZmZlcl9z
YW1wcyksCj4gZHR5cGU9bnAuY29tcGxleDY0KQo+IOKApi4KPiAKPiBzYW1wcyA9IHN0cmVhbWVy
LnJlY3YocmVjdl9idWZmZXIsIG1ldGFkYXRhKQo+IC4uLgo+IAo+IAo+IEkgaGF2ZSBzb21lIGNv
bmZ1c2lvbiBhcyBmb2xsb3c6Cj4gMeOAgU11c3QgdGhlIHJlY3ZfYnVmZmVyIGJlIHRoZSBudW1w
eSBjb21wbGV4IGFycmF5PyBBcyBmYXIgYXMgSSBrbm93LAo+IG51bXB5IG9ubHkgaGFzIHRoZSBk
dHlwZSBjb21wbGV4NjQgYW5kIGNvbXBsZXgxMjguIElmIEkgdXNlIHRoZSBzYzE2Cj4gYXMgdGhl
IGNwdSBmb3JtYXQsIHdoYXQga2luZCAgb2YgbnVtcHkgYXJyYXkgc2hvdWxkICBJIGNyZWF0ZSB0
byBhY3QKPiBhcyB0aGUg4oCYcmVjdl9idWZmZXLigJk/Cj4gCj4gMuOAgUkgdHJ5IHNvbWV0aGlu
ZyB3b3JrYXJvdW5kcywgYnV0IEnigJltIG5vdCBzdXJlIHRoZSByZWNlaXZlIGRhdGEgYXJlCj4g
Y29ycmVjdC4gCj4gRmlyc3Q6ICBzdF9hcmdzID0gbGliLnVzcnAuc3RyZWFtX2FyZ3Mo4oCcc2Mx
NiIsICJzYzE24oCdKSAgICAgICMgSQo+IGNoYW5nZSB0aGUgQ1BVIGZvcm1hdCB0byBzYzE2Cj4g
U2Vjb25kOiAgIHJlY3ZfYnVmZmVyID0gbnAuemVyb3MoKGxlbihjaGFubmVscyksIGJ1ZmZlcl9z
YW1wcyoyKSwKPiBkdHlwZT1ucC5pbnQxNikgICAgICMgSSBjcmVhdGUgdGhlIGFycmF5IHdpdGgg
ZG91YmxlIHNpemUKPiBidWZmZXJfc2FtcHMsIGFuZCAgYXNzaWduIHRoZSDigJlucC5pbnQxNuKA
mSB0byB0aGUgZHR5cGUuCj4gRmluYWxseTogICBzYW1wcyA9IHN0cmVhbWVyLnJlY3YocmVjdl9i
dWZmZXIsIG1ldGFkYXRhKSAgICMgcmVjZWl2ZQo+IHRoZSBkYXRhIGluIHRoZSBpbnQxNiBhcnJh
eQo+IAo+IEkgZ3Vlc3MgdGhlIHJlY3YoKSBmdW5jdGlvbiB3aWxsIHJldHVybiBJIGFuZCBRIHNh
bXBsZXMgaW4gcGFpcnMuSQo+IGNhbiBwcmludCB0aGUgaW50ZWdlciBmcm9tIHRoZSBhcnJheSwg
YnV0IGNhbm5vdCBjb25maXJtIHRoZQo+IGNvcnJlY3RuZXNzIG9mIHRoaXMg4oCYbWV0aG9k4oCZ
Lgo+IAo+IAo+IFBsZWFzZSBnaXZlIG1lIHNvbWUgc3VnZ2VzdGlvbnMgYWJvdXQgaG93IHRvIHVz
ZSDigJlzYzE24oCZIGluIHB5dGhvbiwgSQo+IHdpbGwgYXBwcmVjaWF0ZSBpdCBpbiBhZHZhbmNl
ISEKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
