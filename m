Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A53924597E
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 22:39:49 +0200 (CEST)
Received: from [::1] (port=47066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7PRT-0007A7-8l; Sun, 16 Aug 2020 16:39:47 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:39530)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k7PRQ-00074z-AB
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 16:39:44 -0400
Received: by mail-qt1-f174.google.com with SMTP id w9so10984523qts.6
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 13:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=TtXvvPv1ui3Y+ITp/yR7wDOfK6PDfeeZiOKZt5Fl9xE=;
 b=m3OPbvlJKZl+wRPy6ZxFvJx1loZIUNoomYOOPXqvmHPTmslkfXyiMd29E7zpwbwnWv
 xIDq9rdh66M5GBm49t/k3Jq6H4ZrXWZmwrUuU1zhJJuXcZfD0TfGsYxGLaKtVYXZfakB
 M93XErNUP4mLry6txEbhu58pMAgzDq5vSEDkvMyW4EZFcSg+KA0hI+z72E4/uoNDxslJ
 XRVHWYNDwxlEMFDlbIAjotyCFCtndU+FL1WimR9LQuXPW7MLeuy6UovI5s8iGKc9INNT
 S64C48BnoK/ixdt3a1CcM5g++Xv+Z1VI9iZTOEpiZ4pFmJ3tvKEm4mgR9Pf5ulst8k0N
 vn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=TtXvvPv1ui3Y+ITp/yR7wDOfK6PDfeeZiOKZt5Fl9xE=;
 b=Igtads9ZJjgJTvwjc77uSHR79wo/jkK0bFf0qf4WedfhGTUppl3Fog0gDsC8CUyuRH
 xSyNuUWvNYslisC5f7LOFfPMOxlGQUjfF579bLHEo1JF0LAH6BBF29q31hv/A+Bovz+w
 S3NGAd15vqs/pKPIWBeYW1NQKxMmXKB+pREE8/7JBgzZ+Ywtb8diepgNJz0xY9l3ILOK
 AL5SZ8gwMkhfr3oWkEVR/hWkoyMczq2FUHfjb7rivO6u/llWtNFexsfnLOm3bhycgZQk
 ji+qKOrOWLBAXNrUaAlqkx0sbt6s1lgQRT9ddR5GlSbQGTDQL3CONR31UPmBk0qx3Q51
 k9ow==
X-Gm-Message-State: AOAM531EfF/4hvSSAa9bOxvd6v2FdmRO2GXHDeW4au5pO44KwoyxF7/K
 IJRiymjZPMZqCtExtVIphL2EPyMvWTLGFg==
X-Google-Smtp-Source: ABdhPJwhIxwvWhGdiOVbsg3O1g6R2si7nf2DQhCboUtIOrIQmNmKTpRyEO7VOpxUyRwYEYGQujvgxQ==
X-Received: by 2002:ac8:f15:: with SMTP id e21mr11090191qtk.123.1597610343053; 
 Sun, 16 Aug 2020 13:39:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id i7sm17012465qtb.27.2020.08.16.13.39.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 13:39:02 -0700 (PDT)
Message-ID: <5F399965.3060808@gmail.com>
Date: Sun, 16 Aug 2020 16:39:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <84027C06-239F-4DD5-B847-D9F777453988@me.com>
In-Reply-To: <84027C06-239F-4DD5-B847-D9F777453988@me.com>
Subject: Re: [USRP-users] B210 Got a ctrl packet with unknown SID
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDgvMTYvMjAyMCAwNDoxMyBQTSwgR3JlZyBIdWxhbmRzIHZpYSBVU1JQLXVzZXJzIHdyb3Rl
Ogo+IEhpLAo+IEnigJltIHBsYXlpbmcgYXJvdW5kIHdpdGggYSBKZXRzb24gTmFubyBkZXYga2l0
IGFuZCB0cnlpbmcgdG8gc3RyZWFtIGgyNjUgZW5jb2RlZCB2aWRlbyBvdmVyIGR2Yi10MiB1c2lu
ZyB0aGUgYjIxMC4gSSBhbSB1c2luZyB0aGUgZXhhbXBsZSBmcm9tIHRoZSBkdHYgZm9sZGVyIG9m
IGdyLiBJIG1vZGlmaWVkIHRoZSBzb3VyY2UgZmlsZSB0byByZWFkIGZyb20gYSBmaWxlIG1hZGUg
d2l0aCBta2ZpZm8uCj4KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjUu
MDsgQm9vc3RfMTA2NTAxOyBVSERfMy4xNS4wLjAtNTQtZ2JjNTg1YjQzCj4gW0lORk9dIFtCMjAw
XSBEZXRlY3RlZCBEZXZpY2U6IEIyMTAKPiBbSU5GT10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVT
QiAzLgo+IFtJTkZPXSBbQjIwMF0gSW5pdGlhbGl6ZSBDT0RFQyBjb250cm9sLi4uCj4gW0lORk9d
IFtCMjAwXSBJbml0aWFsaXplIFJhZGlvIGNvbnRyb2wuLi4KPiBbSU5GT10gW0IyMDBdIFBlcmZv
cm1pbmcgcmVnaXN0ZXIgbG9vcGJhY2sgdGVzdC4uLgo+IFtJTkZPXSBbQjIwMF0gUmVnaXN0ZXIg
bG9vcGJhY2sgdGVzdCBwYXNzZWQKPiBbSU5GT10gW0IyMDBdIFBlcmZvcm1pbmcgcmVnaXN0ZXIg
bG9vcGJhY2sgdGVzdC4uLgo+IFtJTkZPXSBbQjIwMF0gUmVnaXN0ZXIgbG9vcGJhY2sgdGVzdCBw
YXNzZWQKPiBbSU5GT10gW0IyMDBdIEFza2luZyBmb3IgY2xvY2sgcmF0ZSAzNi41NzE0MjkgTUh6
Li4uCj4gW0lORk9dIFtCMjAwXSBBY3R1YWxseSBnb3QgY2xvY2sgcmF0ZSAzNi41NzE0MjggTUh6
Lgo+Cj4gSSB0aGVuIGxhdW5jaCB0aGUgZ3N0cmVhbWVyIHBpcGVsaW5lIGFuZCB0aGVuIHRoZSBi
ZWxvdyBpcyBvdXRwdXQgYW5kIG5vdGhpbmcgaXMgdHJhbnNtaXR0ZWQuIEkgZ29vZ2xlZCBhcm91
bmQgYW5kIGl0IHdhcyBzdWdnZXN0ZWQgdGhhdCB0aGUgdXNiMyBjb250cm9sbGVyIG1pZ2h0IGJl
IGFuIGlzc3VlLCBidXQgSSBoYXZlIHNlZW4gb3RoZXIgcGVvcGxlIHN1Y2Nlc3NmdWxseSB1c2lu
ZyB0aGUgSmV0c29uIE5hbm8gd2l0aCB0aGUgYm9hcmQuCj4KPiBEb2VzIGFueW9uZSBoYXZlIGFu
eSBzdWdnZXN0aW9ucz8KPgo+IFRoYW5rcywKPiBHcmVnClRob3NlICdTJyBhcmUgYSBzdHJvbmcg
aW5kaWNhdGlvbiB0aGF0IHlvdXIgVVNCIHN1YnN5c3RlbSBpcyByZWFsbHkgbm90IAprZWVwaW5n
IHVwLiAgSSdtIG5vdCBzdXJwcmlzZWQsIGdpdmVuIHRoYXQgaXQncyBoYXZpbmcgdG8gZG8gYm90
aCBlbmNvZGluZywKICAgYW5kIG1hbmFnaW5nIGEgaGlnaC1zcGVlZCBzYW1wbGUtZmxvdyB0byB0
aGUgVVNSUC4KClRoZSAnUycgbWVhbnMgJ3NlcXVlbmNlIGVycm9yJywgd2hpY2ggZ2VuZXJhbGx5
IG1hbnMgeW91ciBVU0IgaXMgCmRyb3BwaW5nIGZyYW1lcy4gICBZb3UgY291bGQgdHJ5IGFkZGlu
ZyAnbnVtLXJ4X2ZyYW1lcz0xMjgnIHRvIHlvdXIKICAgZGV2aWNlIGFyZ3VtZW50cyBhbmQgc2Vl
IGlmIHRoYXQgaGVscHMuCgoKPgo+IFNTU1NTU1NTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBw
YWNrZXQgd2l0aCB1bmtub3duIFNJRCAyMDcwMjk4NzAKPiBTU1NTU1NTU1NTU1NbRVJST1JdIFtC
MjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDM5Mjc1NzM1OQo+IFNTU1Nb
RVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDU3MDkwOTM0
Cj4gW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAxOTA3
ODI2ODAKPiBTU1NTU1NTU1NTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGgg
dW5rbm93biBTSUQgNDI2ODA5NTE1MAo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0
IHdpdGggdW5rbm93biBTSUQgMTM5OTEzODU0Cj4gW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBw
YWNrZXQgd2l0aCB1bmtub3duIFNJRCA0MDY3Mjk1NTI0Cj4gU1NTU1NTU1NTU1tFUlJPUl0gW0Iy
MDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgNDI4NDc0MjA2NQo+IFNTU1NT
U1NTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAyMjIy
NjUyMgo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQg
OTA0OTkyMzYKPiBTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93
biBTSUQgMjMwNjkwOTgKPiBTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGgg
dW5rbm93biBTSUQgNDA2NjQ0MTY5NQo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0
IHdpdGggdW5rbm93biBTSUQgNDEzMzc0MzI4Mgo+IFNbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJs
IHBhY2tldCB3aXRoIHVua25vd24gU0lEIDQxNTAzMjI5MTMKPiBbRVJST1JdIFtCMjAwXSBHb3Qg
YSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDkwMTA5ODkwCj4gW0VSUk9SXSBbQjIwMF0g
R290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA0NDE5NzMyMTEKPiBbRVJST1JdIFtC
MjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDI0MTgyNzQ2Ngo+IFtFUlJP
Ul0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgMTI0MTg5MTc5Cj4g
W0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA3MzIwNDEw
NAo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgNDU4
NTQ1MjkxCj4gW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJ
RCAzNjY0NjQ1MDU5Cj4gU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5r
bm93biBTSUQgNDIwMDAwMTU5OQo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdp
dGggdW5rbm93biBTSUQgNDE4NDA4MDA0MQo+IFtFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFj
a2V0IHdpdGggdW5rbm93biBTSUQgMzc4MTE2NzEyNQo+IFNTU1NTU1VTU1NTU1NTU1tFUlJPUl0g
W0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgMjI0NjUyNDI5Cj4gW0VS
Uk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA1NjIyODQ1OAo+
IFNTU1NTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQg
Mzk4MTQ0NzYxMgo+IFNTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NT
U1NTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAzNDA3
OTA1MjUKPiBTU1NbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24g
U0lEIDk0NTY4NjQ5NAo+IFNTU1NTU1NbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3
aXRoIHVua25vd24gU0lEIDIyODE3NDM5Cj4gU1NTCj4KPiBHc3RyZWFtZXIgcGlwZWxpbmU6Cj4g
Z3N0LWxhdW5jaC0xLjAgbnZhcmd1c2NhbWVyYXNyYyAhICd2aWRlby94LXJhdyhtZW1vcnk6TlZN
TSksIHdpZHRoPTE5MjAsIGhlaWdodD0xMDgwLGZvcm1hdD1OVjEyLCBmcmFtZXJhdGU9MzAvMScg
ISBudnY0bDJoMjY1ZW5jIGJpdHJhdGU9ODAwMDAwMCAhIG1wZWd0c211eCAhIGZpbGVzaW5rIGxv
Y2F0aW9uPWNhbWVyYS50cwo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20K
