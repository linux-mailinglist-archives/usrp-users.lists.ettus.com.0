Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C638C189D68
	for <lists+usrp-users@lfdr.de>; Wed, 18 Mar 2020 14:55:35 +0100 (CET)
Received: from [::1] (port=36878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEZAT-0008Gi-MB; Wed, 18 Mar 2020 09:55:33 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:33962)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jEZAP-00089u-Rd
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 09:55:29 -0400
Received: by mail-wr1-f53.google.com with SMTP id z15so30490260wrl.1
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 06:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=zjni3Tfpn9GP4BlNWool4XtyANUDq78mphwVmzBKNFA=;
 b=xn3v+5c9z0TtdrNu/sjzecnwn/QAOLcYCjBIaKhxs+GrymeDej1HEFBjCTy+Qkjor8
 I4u903uKQtltMjdTLuqPbeBaGcGuELIIIRrn9Se6pt1GL8IJhdUZFUsVaDcYqL5xYe7j
 d/OfWi0kOd3xbSLEARsfLIbcmQ6yw3lFnhm7WYPQ0k/dK47KffIPoPvrQw+lyb/dQFD5
 o7wP+0+8QWhWn2ugfsXlZzDN3Q3wFQSulDm2l3VhJcGn9sHOE9zxRTVAumyzk2Nd5zQ6
 jIAm4eHKLreLUJXrnSd/PEUZRLQx+BaruLUXZ/ymvj2Bv6uYm+H9hldTjEPb9osWVnjH
 5+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zjni3Tfpn9GP4BlNWool4XtyANUDq78mphwVmzBKNFA=;
 b=uezAzS9CqzlLv2ueGxWpkHe95Hr/J0PvIKIju8mjnbKuVMnu85PDJxtD7NXlkATwJQ
 qC3yJKq958X94ptz4uF2jAVKr/O98ygV7uKPNHWrFW9BkinHnKmqGpsZop/y1JIhWhaH
 WFIZyO3co2mZOFn0cj8QXUhDHAPrMc6Dktj2JGXdrFMXf/glGqmZi4cP5lLpUgAr7CUV
 HpA+v95sss52HyzhDdKgcAZ/xIQJvPbn08vtioHuO20nH+E4GooQX2E+wst2rmPEzJgY
 CJd82KgABoOgwNCaVShLOOTIO5lvYUrr2h5B+SMouGmn9qezXAzeuf4u1AJV2Lbxuvte
 mpCg==
X-Gm-Message-State: ANhLgQ1Tw/ZIcyjsYMZ34VqF08qH/hy4EX4jhflmL5jZitiYriIEYdCk
 voGW5feU8wJwjBEEVYyGH05az1etE8Fmsw==
X-Google-Smtp-Source: ADFU+vs0VMzk1npbdTZ144CtMcOR8ZsCK2tz59yH58VNUBki4LueFfWrhxzyHwCrty3IYec3Ui45qQ==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr5493691wrs.4.1584539688196;
 Wed, 18 Mar 2020 06:54:48 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id t124sm4092306wmg.13.2020.03.18.06.54.46
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 06:54:47 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAKaLowSaOhC6L9B4axxwV0=eq=PXzwRoCn22kqyfu529rTr7Dw@mail.gmail.com>
 <1661e285-c25d-8272-0e49-1d0f896033b4@comcast.net>
 <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
Message-ID: <0d486110-0f4a-9605-ae9a-b68075c797e5@ettus.com>
Date: Wed, 18 Mar 2020 14:54:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKaLowQZETbs6g=Ry5wGxuV7cJRM7eQWKmh1zyDDtHLrYuOxvQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Apologize if duplicate : UHD 3.15 isn't using USB
 3.0 although Linux driver are loaded
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

SGkgUm9kb2xwaGUsCgpmaXJzdCBvZiBhbGwsIGNoZWNrIHdoZXRoZXIgeW91J3JlIGFjdHVhbGx5
IGRlYWxpbmcgd2l0aCBhIFVTQjMgcG9ydC4gSQprbm93LCBzb3VuZHMgc3RyYW5nZSwgYnV0IGlm
IGl0J3Mgbm90IGJsdWUgYW5kIGRvZXNuJ3QgaGF2ZSBtb3JlIHRoYW4KZm91ciB2aXNpYmxlIGNv
bnRhY3RzLCBpdCdzIG5vdCBzdGFuZGFyZC1jb21wbGlhbnQgVVNCMy4gVGhlIGZhY3QgdGhhdApp
dCdzIGF0dGFjaGVkIHRvIGEgeEhDSSBkb2Vzbid0IGl0c2VsZiBtZWFuIGl0IGNhbiBkbyBVU0Iz
LgoKVGhlbiwgSSBjYW4ndCBxdWl0ZSByZW1lbWJlciB3aGV0aGVyIHRoZSBVU0IgY29udHJvbGxl
ciBvbiB0aGUgQjIwMAp3b3VsZCBldmVuIHJlZ2lzdGVyIGFzIFVTQjMgYmVmb3JlIHRoZSBpbml0
aWFsIGZpcm13YXJlIGlzIGxvYWRlZC4gVHJ5CnRoZSBmb2xsb3dpbmc6IEluIG9uZSB0ZXJtaW5h
bCB3aW5kb3csIHJ1biBgZG1lc2cgLUh3eGAuIFBsdWcgaW4gdGhlClVTUlAsIGFuZCBzZWUgaG93
IGl0IGFwcGVhcnMgb24gdGhlIGJ1cyAoaXQgc2VlbXMsIGFzIFVTQjIgaGlnaC1zcGVlZApkZXZp
Y2UpLiBBZnRlciB0aGF0LCBpbiBhbm90aGVyIHRlcm1pbmFsLCB5b3UnZCBydW4gYHVoZF9maW5k
X2RldmljZXNgLAphbmQgc2VlIHdoZXRoZXIgdGhlIGRldmljZSByZS1lbnVtZXJhdGVzIGFzIFVT
QjMgU3VwZXJTcGVlZCBkZXZpY2UuCgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwoKT24gMTguMDMuMjAg
MTM6NDMsIFJvZG9scGhlIEJlcnRvbGluaSB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBIZWxsbyBS
b24sIChJIHJlc2VuZCB0aGUgZW1haWwsIEkgZm9yZ290IHRvICJyZXBseSB0byBhbGwiKQo+IFRo
YW5rIHlvdSBmb3IgeW91ciBxdWljayBmZWVkYmFjay4KPiAKPiBPayBJIHVuZGVyc3RhbmQuIE1v
cmUgaW5mb3JtYXRpb24sIGxzcGNpIGdpdmVzIG1lIDoKPiAwMDoxNC4wIFVTQiBjb250cm9sbGVy
OiBJbnRlbCBDb3Jwb3JhdGlvbiBDYW5ub24gTGFrZSBQQ0ggVVNCIDMuMSB4SENJCj4gSG9zdCBD
b250cm9sbGVyIChyZXYgMTApCj4gU28gSSBkb24ndCBnZXQgd2h5IGRvZXNuJ3QgVWJ1bnR1IGVu
YWJsZXMgVVNCIDMuMCB3aXRoIHRoZSBCMjEwLgo+IAo+IE15IHByb2JsZW1zIGxvb2tzIGxpa2Ug
dGhpcyBvbmUKPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbS8yMDE4LUp1bHkvMDU3MzIzLmh0bWwKPiAKPiBUaGUgb3V0cHV0IG9mIGxz
dXNiIC10IGlzIHNpbWlsYXIsIHdpdGggIkRyaXZlcj0obm9uZSkiCj4gQSBtZXNzYWdlIG9mIGFi
b3ZlIG1lbnRpb25lZCB0aHJlYWQgc3VnZ2VzdHMgdG8gZW5hYmxlIDMuMCBvcHRpb24gaW4KPiBC
SU9TLCBob3dldmVyIEkgZG9uJ3QgaGF2ZSBzdWNoIG9wdGlvbi4gQW5kIGV2ZW4gaWYgSSBoYWQs
IEkgZGlkbid0IG5vdAo+IGNoYW5nZSBhbnl0aGluZyBiZXR3ZWVuIHJlYm9vdCAvIHNlc3Npb24g
c3dpdGNoIHNvIEkgcmVhbGx5IGRvbid0Cj4gdW5kZXJzdGFuZCB3aGVyZSB0aGlzIHJlZ3Jlc3Np
b24gaXMgY29taW5nIGZyb20uCj4gQWxzbyBJIGRpZCB0aGUgInNvbHV0aW9uIiBtZW50aW9uZWQg
YnkgdGhlIGF1dGhvciA6Cj4gCj4gdWhkX2ltYWdlX2xvYWRlciAtLWFyZ3M9InR5cGU9YjIwMCxy
ZXNldCIKPiAKPiAKPiBXaGljaCBkaWQgbm90IGltcHJvdmUgdGhlIHNpdHVhdGlvbi4KPiAKPiAK
PiBUaGFuayB5b3UgYWdhaW4KPiAKPiBSb2RvbHBoZQo+IAo+IExlwqBtZXIuIDE4IG1hcnMgMjAy
MCDDoMKgMTI6MDIsIFJvbiBFY29ub21vcyB2aWEgVVNSUC11c2Vycwo+IDx1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gYSDDqWNy
aXTCoDoKPiAKPiAgICAgZG1lc2cgc2hvdWxkIHNheSAibmV3IFN1cGVyU3BlZWQgVVNCIGRldmlj
ZSBudW1iZXIgWCB1c2luZyB4aGNpX2hjZCIKPiAgICAgb3IgIm5ldyBTdXBlclNwZWVkIEdlbiAx
IFVTQiBkZXZpY2UgbnVtYmVyIFggdXNpbmcgeGhjaV9oY2QiIGlmIHlvdQo+ICAgICBoYXZlIGEg
bmV3ZXIga2VybmVsLgo+IAo+ICAgICAiaGlnaC1zcGVlZCIgbWVhbnMgVVNCIDIuMC4KPiAKPiAg
ICAgUm9uCj4gCj4gICAgIE9uIDMvMTgvMjAgMDM6NDEsIFJvZG9scGhlIEJlcnRvbGluaSB2aWEg
VVNSUC11c2VycyB3cm90ZToKPj4gICAgIERlYXIgYWxsLAo+Pgo+PiAgICAgSSBoYXZlIGJlZW4g
dXNpbmcgYSBVU1JQIEIyMTAgb24gYSBsYXB0b3AgZm9yIG1vbnRocyBub3cuIEZvcgo+PiAgICAg
cmVhc29ucywgSSBzd2l0Y2hlZCB0byBhbm90aGVyIExpbnV4IHNlc3Npb24sIGFuZCB1c2luZyB0
aGlzCj4+ICAgICBzZXNzaW9uIFVIRCBmYWlscyB0byB0YWxrIHRvIEIyMTAgb3ZlciBVU0IgMy4w
Cj4+Cj4+ICAgICBkbWVzZyB0ZWxscyBtZSBpdCBpcyB1c2luZyB0aGUgeGhjaV9oY2QgZHJpdmVy
ICh3aGljaCBJIGJlbGlldmUgaXMKPj4gICAgIHRoZSBkcml2ZXIgZm9yIFVTQiAzLjApLCBhbmQg
aXMgYWxzbyBtZW50aW9uaW5nwqAgIm5ldyBoaWdoLXNwZWVkCj4+ICAgICBVU0IiLCB3aGljaCBs
ZWFkcyBtZSB0byB0aGluayB0aGF0IFVTQiAzLjAgbGluayBpcyB3ZWxsIHJlY29nbml6ZWQKPj4g
ICAgIGFuZCBhY3RpdmU6Cj4+Cj4+ICAgICBbIMKgMzA2LjEzMzAyOF0gdXNiIDEtMTogbmV3IGhp
Z2gtc3BlZWQgVVNCIGRldmljZSBudW1iZXIgMTYgdXNpbmcKPj4gICAgIHhoY2lfaGNkCj4+ICAg
ICBbIMKgMzA2LjI2MDM0OV0gdXNiIDEtMTogTmV3IFVTQiBkZXZpY2UgZm91bmQsIGlkVmVuZG9y
PTI1MDAsCj4+ICAgICBpZFByb2R1Y3Q9MDAyMAo+PiAgICAgWyDCoDMwNi4yNjAzNTFdIHVzYiAx
LTE6IE5ldyBVU0IgZGV2aWNlIHN0cmluZ3M6IE1mcj0xLCBQcm9kdWN0PTIsCj4+ICAgICBTZXJp
YWxOdW1iZXI9Mwo+PiAgICAgWyDCoDMwNi4yNjAzNTJdIHVzYiAxLTE6IFByb2R1Y3Q6IFVTUlAg
QjIwMAo+PiAgICAgWyDCoDMwNi4yNjAzNTRdIHVzYiAxLTE6IE1hbnVmYWN0dXJlcjogRXR0dXMg
UmVzZWFyY2ggTExDCj4+ICAgICBbIMKgMzA2LjI2MDM1NV0gdXNiIDEtMTogU2VyaWFsTnVtYmVy
OiAzMUI5Mjg5Cj4+Cj4+ICAgICBIb3dldmVyLCB3aGVuIHJ1bm5pbmcgYW55IHVoZCBjb21tYW5k
IGxpbmUsIGl0IGZhaWxzIHVzaW5nIFVTQiAzLjA6Cj4+Cj4+ICAgICBbSU5GT10gW1VIRF0gbGlu
dXg7IEdOVSBDKysgdmVyc2lvbiA1LjQuMCAyMDE2MDYwOTsgQm9vc3RfMTA1ODAwOwo+PiAgICAg
VUhEXzMuMTUuMC4wLXJlbGVhc2UKPj4gICAgIFtJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQgRGV2aWNl
OiBCMjEwCj4+ICAgICBbSU5GT10gW0IyMDBdIE9wZXJhdGluZyBvdmVyIFVTQiAyLgo+Pgo+PiAg
ICAgSSBoYXZlIGFsc28gdHJpZWQgd2l0aCBVSEQgMy4xNC4xLCBubyBpbXByb3ZlbWVudC4KPj4K
Pj4gICAgIEkgcmVtZW1iZXIgaGF2aW5nIGEgc2ltaWxhciBpc3N1ZSAobWF5YmUgdGhlIHNhbWU/
KSB0aGF0IGhhZCBiZWVuCj4+ICAgICBzb2x2ZWQgd2l0aCBzb21ldGhpbmcgcmVsYXRlZCB0byB1
ZGV2LCBidXQgSSBzYWRseSBkaWRuJ3QgdGFrZSBhbnkKPj4gICAgIG5vdGUgb2YgdGhpcy4KPj4K
Pj4gICAgIERvIHlvdSBoYXZlIGFueSBoaW50Pwo+Pgo+PiAgICAgVGhhbmsgeW91Lgo+PiAgICAg
UmVnYXJkcywKPj4gICAgIFJvZG9scGhlCj4+Cj4+ICAgICBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
Pj4gICAgIFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+Cj4+ICAgICBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAgICAgX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QK
PiAgICAgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4KPiAgICAgaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
