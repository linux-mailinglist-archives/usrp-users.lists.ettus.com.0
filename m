Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28889284A4
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 19:16:30 +0200 (CEST)
Received: from [::1] (port=55292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTrKM-0002Gd-Oh; Thu, 23 May 2019 13:16:26 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:35724)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <vladicasark@gmail.com>)
 id 1hTrJp-00028q-MN
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 13:16:23 -0400
Received: by mail-wm1-f65.google.com with SMTP id w9so459297wmi.0
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 10:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/s4u2TUx6uuWyssfSC3xz/ElO1aEslchYcBQVQeCR6A=;
 b=QJEEed7MVqq4qJIKnZLpdE8JlnjdWLdXxUUGfrJjcGnTbsD9yVZgJeDwtdDWuhYlOH
 eTBBlTv5P43DEa5Eqn5noBznC4ycSn8vc4wwmgFZS2v/m6OcOPN/jCMZPdkUQeBdK5m+
 NAEL4GrU17dt60IiRMxhKqXsjvTm+AlS9pGYkob83IbXxfPOCnOor3BkO5vTqvS+kcwe
 bp3IN+z39nmxTiZ4d9Tm+TOtJ7BnhdH0c3xTGj/QXRXnVB1ULAzRewafTbFKPixcrYQx
 7JSzpm4RAQleKjWCSdazETP27VI42/FmdPBFaPmb1vkYNSXkMHv5Aih3X4QetxFFf3Wz
 jGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/s4u2TUx6uuWyssfSC3xz/ElO1aEslchYcBQVQeCR6A=;
 b=KyKDl7l61IAX8mQk/d5HWWvFmY2pWT0idjtylgHqx7+0ywS5YwWvZsrpOZ0IGE3j5O
 J2F6LE/rSnx42bdvnRM/M8ENtd5hU1taSn78MU7FTrv6d7dpywI+xy+RTsYGcycs88vm
 yaIgmmiCYmrhANBZ4i2JpSvcl/07Uh2iaj+JjLh4OOj5kzP/gDlGhVQ49UeDq3MDJxT1
 BStPau4SJVLbQwI6fzrwBTxv0eTyK1/kVJcOcKFp1JnPox6dXviW3Rnk61tQW6ceSqMg
 SGUlyswmvpxuLLCfKtdcncJOWLiB21NVvqPc91B1wIDWhgQNiGivn5g+8d3jQornVQT9
 Y7UQ==
X-Gm-Message-State: APjAAAWk6FEeBhHf5Pag/ZULSwjxaYjGKusHEzqitIIHHg9KvpWYpmHI
 Q3VfC8aTy9i4qy3LBU0eKJc2BuKT
X-Google-Smtp-Source: APXvYqxGFMk5FMO62SG9w88B32M+ZxJJNLPm8TJpPFPWdmq3vyL2Py32sHk1YX1Y++9Tltw9v3/Xdw==
X-Received: by 2002:a1c:1a47:: with SMTP id a68mr12148734wma.88.1558631712285; 
 Thu, 23 May 2019 10:15:12 -0700 (PDT)
Received: from [192.168.0.16] (46.128.161.107.dynamic.cablesurf.de.
 [46.128.161.107])
 by smtp.gmail.com with ESMTPSA id g6sm38352626wro.29.2019.05.23.10.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 10:15:11 -0700 (PDT)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
 <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com> <5CE6C08E.8050302@gmail.com>
 <61986861-6b31-6286-6d98-7e4d4f66c8da@gmail.com> <5CE6D3D2.3090209@gmail.com>
Message-ID: <6d68e7c1-8983-651a-7446-ead7670cc387@gmail.com>
Date: Thu, 23 May 2019 19:15:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5CE6D3D2.3090209@gmail.com>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Multiple TX streams
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
From: Vladica Sark via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vladica Sark <vladicasark@gmail.com>
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

SSB3b3VsZCB0b21vcnJvdywgd2hlbiBJIGFtIGJhY2sgYXQgd29yay4KCk9uIDIzLjA1LjE5IDE5
OjA5LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6Cj4gT24gMDUvMjMvMjAxOSAwMTowMiBQTSwgVmxh
ZGljYSBTYXJrIHdyb3RlOgo+PiBJIGFtIHVzaW5nIDEgR2IgRVRIIGludGVyZmFjZS4gVGhlIHNh
bXBsZSByYXRlIGlzIHRoZSBkZWZhdWx0IGZvciAKPj4gdHhfdGltZWRfc2FtcGxlcywgaS5lLiA2
LjI1IE1TcHMuIEkgYW0gZ2V0dGluZyBubyB1bmRlcnJ1biBpbmRpY2F0aW9uLgo+PiBUaGUgdHhf
dGltZWRfc2FtcGxlcyBzZW5kcyB0aGUgc2FtcGxlcyB0byB0aGUgcmFkaW8gYW5kIHNjaGVkdWxl
cyB0aGUgCj4+IHRyYW5zbWlzc2lvbiAxLjUgc2Vjb25kcyBpbiBmdXR1cmUuIElmIEkgcHV0IG9u
bHkgMSByYWRpbywgaS5lLiBvbmUgSVAgCj4+IGFkZHJlc3MsIGV2ZXJ5dGhpbmcgd29ya3MgcGVy
ZmVjdC4KPj4gV2l0aCAyIElQIGFkZHJlc3NlcyAodHdvIHJhZGlvcyksIHNvbWV0aW1lcyByZXBv
cnRzIHN1Y2Nlc3Mgc29tZXRpbWVzIAo+PiBmYWlsLiBJdCBzZWVtcyBjb21wbGV0ZWx5IHVuZGV0
ZXJtaW5lZC4KPiBDb3VsZCB5b3Ugc2hhcmUgdGhlIGVycm9yIG91dHB1dCB3aXRoIHVzIHdoZW4g
eW91IHVzZSB0eF90aW1lZF9zYW1wbGVzPwo+IAo+IAo+Pgo+PiBCUiwKPj4gVmxhZGljYQo+Pgo+
Pgo+PiBPbiAyMy4wNS4xOSAxNzo0NywgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIHdy
b3RlOgo+Pj4gT24gMDUvMjMvMjAxOSAwNTozOSBBTSwgVmxhZGljYSBTYXJrIHZpYSBVU1JQLXVz
ZXJzIHdyb3RlOgo+Pj4+IEhpIGFnYWluLAo+Pj4+Cj4+Pj4gSSBmb3VuZCBhbiBlYXN5IHdheSB0
byByZXByb2R1Y2UgdGhlIHByb2JsZW0uIEkgdXNlIHR3byB4MzEwJ3MgYW5kIAo+Pj4+IHJ1biB0
aGUgdHhfdGltZWRfc2FtcGxlcyBhczoKPj4+Pgo+Pj4+IHR4X3RpbWVkX3NhbXBsZXMgLS1hcmdz
ICJhZGRyMD0xOTIuMTY4LjUwLjIsYWRkcjE9MTkyLjE2OC4xMzAuMiIgCj4+Pj4gLS1zZWNzIDAu
NSAtLW5zYW1wcyAxMDAwMDAwCj4+Pj4KPj4+PiBzb21ldGltZXMgaXQgZmFpbHMsIHNvbWV0aW1l
cyBpdCB3b3Jrcy4gSSB1c2UgbGFyZ2VyIG51bWJlciBvZiAKPj4+PiBzYW1wbGVzIHRvIGJlIGFi
bGUgdG8gbm90aWNlIHRoZSBMRUQgYmxpbmtpbmcuCj4+Pj4KPj4+PiBCUiwKPj4+PiBWbGFkaWNh
Cj4+PiBBcmUgeW91IGdldHRpbmcgYW55IHVuZGVyLXJ1biBpbmRpY2F0aW9uP8KgIFdoYXQgdHlw
ZSBvZiBldGhlcm5ldCAKPj4+IGludGVyZmFjZSBhcmUgeW91IHVzaW5nLCBhbmQgYXQgd2hhdCBz
YW1wbGUgcmF0ZXM/Cj4+Pgo+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gT24gMjMuMDUuMTkgMDg6MzYsIFZs
YWRpY2EgU2FyayB3cm90ZToKPj4+Pj4gSGkgZm9sa3MsCj4+Pj4+Cj4+Pj4+IEkgaGF2ZSAyeCBY
MzEwIGNvbm5lY3RlZCB0byBPY3RvY2xvY2sgKDEwIE1IeiArIFBQUyksIGVhY2ggd2l0aCAyeCAK
Pj4+Pj4gVUJYIGZyb250ZW5kcy4gSSBjb250cm9sIHRoZW0gZnJvbSBhIEMvQysrIHByb2dyYW0u
IFNpbmNlIHRoZXJlIGFyZSAKPj4+Pj4gNCBjaGFubmVscywgSSBjcmVhdGUgNCB0eCBzdHJlYW1l
cnMgaW4gb3JkZXIgdG8gdHJhbnNtaXQgdGltZWQgCj4+Pj4+IHNhbXBsZXMgb24gZWFjaCBvZiB0
aGVtLiBUaGUgdHJhbnNtaXNzaW9ucyBhcmUgbm90IGF0IHRoZSBzYW1lIHRpbWUgCj4+Pj4+IGFu
ZCB0aGlzIGlzIHRoZSByZWFzb24gZm9yIHVzaW5nIDQgdHggc3RyZWFtZXJzLiBUaGUgcHJvYmxl
bSBpcyAKPj4+Pj4gdGhhdCB3aGVuIEkgc2NoZWR1bGUgdGltZWQgdHJhbnNtaXNzaW9ucyBvbiBh
bGwgb2YgdGhlIGNoYW5uZWxzIChhdCAKPj4+Pj4gdGhlIHNhbWUgdGltZSBmb3IgdGVzdCksIHNv
bWV0aW1lcyBJIGRvIG5vdCBnZXQgYW55dGhpbmcgd2l0aCAKPj4+Pj4gcmVjdl9hc3luY19tc2cs
IGkuZS4gdGhlIHRpbWVvdXQgZXhwaXJlcy4gVGhpcyBhbHNvIGhhcHBlbnMgZXZlbiAKPj4+Pj4g
d2hlbiBJIHNjaGVkdWxlIG9ubHkgYSBzaW5nbGUgdHJhbnNtaXNzaW9uIGZyb20gc2luZ2xlIHR4
IHN0cmVhbWVyIAo+Pj4+PiAoYWxsIDQgc3RyZWFtZXJzIGFyZSBjcmVhdGVkKS4KPj4+Pj4gU29t
ZXRpbWVzIGl0IGhhcHBlbnMgdGhhdCBldmVyeXRoaW5nIGlzIHdvcmtpbmcgd2l0aG91dCBwcm9i
bGVtcywgCj4+Pj4+IGkuZS4gSSBtYWtlIDIwMCB0cmFuc21pc3Npb25zIG9uIGVhY2ggb2YgdGhl
IGNoYW5uZWxzIGFuZCBJIGdldCB0aGUgCj4+Pj4+IHByb3BlciByZXNwb25zZSBmcm9tIHRoZSBy
ZWN2X2FzeW5jX21zZywgYnV0IG1hbnkgdGltZXMsIHJlc3RhcnRpbmcgCj4+Pj4+IHRoZSBzYW1l
IHByb2dyYW0gbGVhZHMgdG8ganVzdCByZWN2X2FzeW5jX21zZyB3aXRoIGV4cGlyZWQgdGltZW91
dC4gCj4+Pj4+IEkgYW0gdXNpbmcgVUhEIDMuMTMuMC4KPj4+Pj4KPj4+Pj4gSSBjYW4gcHJvYmFi
bHkgdXNlIG9uZSBzdHJlYW1lciBhbmQgdHJhbnNtaXR0aW5nIDAncyBvbiB0aGUgcmVzdCBvZiAK
Pj4+Pj4gdGhlIGNoYW5uZWxzLCBidXQgSSB3b3VsZCBsaWtlIHRvIGF2b2lkIExPIGxlYWthZ2Ug
aW4gdGhlIGFpci4KPj4+Pj4KPj4+Pj4gQmVzdCByZWdhcmRzLAo+Pj4+PiBWbGFkaWNhCj4+Pj4K
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
