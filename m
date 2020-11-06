Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 675A52A9E56
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 21:02:18 +0100 (CET)
Received: from [::1] (port=58766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kb7w5-00015Y-IM; Fri, 06 Nov 2020 15:02:13 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:43940)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kb7w0-0000yh-Sd
 for USRP-users@lists.ettus.com; Fri, 06 Nov 2020 15:02:08 -0500
Received: by mail-qk1-f182.google.com with SMTP id c27so2218248qko.10
 for <USRP-users@lists.ettus.com>; Fri, 06 Nov 2020 12:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=6pcmpIBA/WNWgdHEZyJ/aNk8XJfyJDsF2usHxI/ex7I=;
 b=vUxZ0lCu1m6BD+AJioOgUOqw+uZuvgWqFMYny6BSJJpRSraHuM2IwCIV4lBhwZ1cTC
 SmK4SJfVQRADiWBV4Y32BpKuesf9dPsTvn2laollAf46Youk4BGsigVYXdELc9X1DcSS
 coeHoSS21I/1ZVa9dpzwXOSuC5epLwHvWC+uXqHbMlvHb+b6NbP5wYzQaYx/XIjQjU5v
 JJ7wZvvRfOEs30bmxvc3sXJzubacpuFD+sW7DsgznqLaHWbcClnhj73GGcv9FaVp94sT
 1kUajLo0VdLCwNoJBhnqc3DT1k7B014j/HkGyEmyVL7Q/HHklb4yt/xfratH2H5dNOHv
 6oxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=6pcmpIBA/WNWgdHEZyJ/aNk8XJfyJDsF2usHxI/ex7I=;
 b=hPu+n91N+++7J6LIUzjwgxo2riNZRhs3vS26hdh3/7tbuRMgvpDpNzD6sKwgtPZGMq
 QXQc1NEMeTQW5sZJv0WPrPwxpKycrOllSa2ASalhyQbx27n1nt5n/+vesWlbOg+ZVdHP
 Sg4irrcWAf3H3aQHy7t5GTnTjOhu9f4dZJVO93Y1wfdz+6SHqfsSLLdyssKda4uDkpRn
 MKBSSSkx5GbUOkP9RBgK1sqdQZXcqnSVqyx9FVqCQTYuZ3V3ycMMO9teFkIPp0UiwhRN
 vPyQWKAKc39nufaS/Jf+vXocPPhq1m0EL7APPlGmZbTvRbwU2UsWTgr8EK8zN4itm/WO
 GnsA==
X-Gm-Message-State: AOAM5302vxjdPu0nWm28Wm0l5dJ6oDy60O9cC3+zKva16IOcpZ+XmWfm
 GT2MubajPlUTE1+/VXHugIgV1Ult5Tk=
X-Google-Smtp-Source: ABdhPJyeJ2UJvdrpEghDdm8wrL8U5FF8nNLZg+wOR0oT3TsEyrVrB2ofGZqTYaAR2ogg1fnMtp1Lvg==
X-Received: by 2002:a37:aa93:: with SMTP id t141mr3159836qke.400.1604692888132; 
 Fri, 06 Nov 2020 12:01:28 -0800 (PST)
Received: from [192.168.0.176] (d24-146-32-64.commercial.cgocable.net.
 [24.146.32.64])
 by smtp.gmail.com with ESMTPSA id y68sm1264464qkb.38.2020.11.06.12.01.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 12:01:27 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 6 Nov 2020 15:01:26 -0500
Message-Id: <D18E4260-4244-41B6-A19A-E9CCF95D968C@gmail.com>
References: <d8bc79c1f7f77da9da610d725e36c46e@femto-st.fr>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <d8bc79c1f7f77da9da610d725e36c46e@femto-st.fr>
To: jeanmichel.friedt@femto-st.fr
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] B210 drops one sample every 2^32 samples !
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhhbmtzLCBKZWFuLU1pY2hlbC4gCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDYs
IDIwMjAsIGF0IDE6MjQgUE0sIGplYW5taWNoZWwuZnJpZWR0QGZlbXRvLXN0LmZyIHdyb3RlOgo+
IAo+IO+7v0kgd2FzIHdhaXRpbmcgdG8gY29uZmlybSBtZWFzdXJlbWVudHM6Cj4gKiBJIGNvbmZp
cm0gbGlidWhkIDMuMTUgcnVubmluZyB0aGUgWDMxMCB3aWxsIE5PVCBkaXNwbGF5IHRoZSBzYW1l
IGVmZmVjdCAKPiAqIEkgY29uZmlybSBsaWJ1aGQgNCBET0VTIGRpc3BsYXkgdGhlIHNhbWUgZWZm
ZWN0IG9uIHRoZSBCMjEwLgo+IAo+IEkgY2FuIHByb3ZpZGUgdGhlIGNoYXJ0cyB3aGljaCBJIGRp
ZCBub3QgdXBsb2FkIG9uIHRoZSBnbnNzLXNkciBnaXRodWIgaXNzdWUKPiBhcyBkZW1vbnN0cmF0
aW9uIG9mIHRoZXNlIG1lYXN1cmVtZW50cy4KPiAKPiBUaGFua3MsIEpNCj4gCj4gLS0KPiBKTSBG
cmllZHQsIEZFTVRPLVNUIFRpbWUgJiBGcmVxdWVuY3ksIDI2IHJ1ZSBkZSBsJ0VwaXRhcGhlLCAy
NTAwMCBCZXNhbmNvbiwgRnJhbmNlCj4gCj4gTm92ZW1iZXIgNiwgMjAyMCA3OjE4IFBNLCAiTWFy
Y3VzIEQgTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4+IERvIHlv
dSBzZWUgdGhlIHNhbWUgdGhpbmcgb24gb3RoZXIgcGxhdGZvcm1zPyBXaGF0IGFib3V0IG5ld2Vy
L29sZGVyIFVIRCB2ZXJzaW9ucz8KPj4gCj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4gCj4+Pj4g
T24gTm92IDYsIDIwMjAsIGF0IDU6MjkgQU0sIEpNIEZyaWVkdCB2aWEgVVNSUC11c2VycyA8dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pj4gCj4+PiBXaGlsZSBhbmFseXppbmcg
R1BTIHRpbWluZyBjYXBhYmlsaXRpZXMgb2YgZ25zcy1zZHIgYXMgZGVzY3JpYmVkIGF0Cj4+PiBo
dHRwczovL2dpdGh1Yi5jb20vZ25zcy1zZHIvZ25zcy1zZHIvaXNzdWVzLzQ0Mgo+Pj4gd2UgaGF2
ZSBiZWNvbWUgY29udmluY2VkIHRoYXQgdGhlIEIyMTAgdHJhbnNmZXJyaW5nIGRhdGEgdXNpbmcg
bGlidWhkIDMuMTUKPj4+IGRyb3BzIG9uZSBzYW1wbGVzIGV2ZXJ5IDJeMzIgKGkuZSBvbmUgc2Ft
cGxlIGV2ZXJ5IDQyOTQ5NjcyOTYpLiBUaGlzIGNvbmNsdXNpb24KPj4+IHdhcyByZWFjaGVkIGJ5
IGNoYW5naW5nIHRoZSBzYW1wbGluZyByYXRlIGFuZCBvYnNlcnZpbmcgdGhhdCB0aGUgdGltZSBz
aGlmdCBpbgo+Pj4gdGhlIEdQUyB0aW1pbmcgY2FwYWJpbGl0eSB3YXMganVtcGluZyBieSBvbmUg
c2FtcGxlIHBlcmlvZCBldmVyeSA0Mjk0OTY3Mjk2Cj4+PiBhY3F1aXNpdGlvbnMgKGkuZS4gMzYg
bWludXRlcyBhdCAyIE1TL3Mgb3IgNTcgbWludXRlcyBhdCAxLjI1IE1TL3MpLiBUaGlzIGlzc3Vl
Cj4+PiBpcyBOT1Qgb2JzZXJ2ZWQgd2l0aCBhbiBYMzEwIHN0cmVhbWluZyBkYXRhIHRvIHRoZSBz
YW1lIGxpYnVoZCBzb3VyY2UuCj4+PiBXZSBoYXZlIG5vIGlkZWEgaG93IHRvIGFkZHJlc3Mgb3Ig
c29sdmUgdGhlIHByb2JsZW0sIGJ1dCBhbnkgaGludCBhdCBob3cgdG8gY29ycmVjdAo+Pj4gdGhl
IGlzc3VlIHdvdWxkIGJlIHdlbGNvbWUuCj4+PiAKPj4+IFRoYW5rIHlvdSwgSmVhbi1NaWNoZWwK
Pj4+IAo+Pj4gWzFdIHJ1bm5pbmcgb24gYSBSYXNwYmVycnkgUGk0IHdpdGggYSA2NC1iaXQga2Vy
bmVsIGFuZCA2NC1iaXQgbGlicmFyaWVzL3Rvb2xjaGFpbiBjb21waWxlZAo+Pj4gd2l0aCBCdWls
ZHJvb3QKPj4+IAo+Pj4gLS0KPj4+IEpNIEZyaWVkdCwgRkVNVE8tU1QgVGltZSAmIEZyZXF1ZW5j
eSwgMjYgcnVlIGRlIGwnRXBpdGFwaGUsIDI1MDAwIEJlc2FuY29uLCBGcmFuY2UKPj4+IAo+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20K
