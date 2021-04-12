Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E742E35D173
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:50:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 362CE383EA8
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:50:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="UldmNBZO";
	dkim-atps=neutral
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A902383F77
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 15:48:51 -0400 (EDT)
Received: by mail-wr1-f49.google.com with SMTP id 12so14155933wrz.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 12:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Nfjn0OTzVltzNoRCKANTQJto/WvQmudO2sbn1Dhormk=;
        b=UldmNBZOwzqB7yRG4LPpkusWAlLfZPIqRgXhsXuWFY4mhm4wE/hlTrpvq7sshJvvnk
         daGu5MRLj0i6O6gdtTbXXI162ku+4PqgiT5sIC5mJCR669hUBXxFMKQgG9XNZFVsN91R
         GhaNUjQKrtX9lu/qIZ0hEeHjjkpFxpMETaXJz5nop5pUQOnFVrlLIaW7lqMIKNtjjkNM
         2iqxeIlpnXQbyPPeL9NXV3f+V2sAz8kgLQGCU7ryzZhO0EBMHZtq7WoYLNO623Whwpad
         mg0Enu58eXsn/UsVBx8bC1xgi+jGy3fQod0N/kJ8MX9i9qh0ZUR7pk6tHZyI2e9dPOQN
         JEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Nfjn0OTzVltzNoRCKANTQJto/WvQmudO2sbn1Dhormk=;
        b=WNY9deSCx339eR86zBJLGUU7RHGfFUz7Gj2mo+UTn6v5OTgVvyTKOMU5ZJiOek2ln7
         cYh6SprlVnflxR5ZKpLAxKQRMPP7L9dLKb0dgNaPHrtEnvGFAsxuyfccb8GCI6SZql82
         cW0qv1Gvy0jVGOnXLpFG7g7YHGPPSNgmwvVwMVfOpfRZJ/NUNPV0Bp/uyMG42HmrTXOp
         8BfJUXQVVFDHtPKyUzArpSxLhpnaRxK0/+EzE2D0yd4VSEEJvAb/3KAaAONvWUqw51P8
         zkw14UTgJRdLQUWPF81JG8lj2IZpCMU8OVTFQRcK/69FW4H0/K5+/+ro6cv6vRpt92K1
         KrUA==
X-Gm-Message-State: AOAM532lPZZzDkYlQrkIKrkfsXmDGVQe2BofJStb4Jc0/Ud3XTomaDy+
	4+t7/kLCn7wNdJb0TWkey6H0ewJksgb/TwgK
X-Google-Smtp-Source: ABdhPJzwvPBBxIP4HLdiKfsIswIhYXj2oiEHFonPh9DSITDttE25lCoiL3L0kyk1hYts2PtHG3z+iw==
X-Received: by 2002:adf:e402:: with SMTP id g2mr33718454wrm.1.1618256929974;
        Mon, 12 Apr 2021 12:48:49 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-193.hsi.kabel-badenwuerttemberg.de. [46.223.162.193])
        by smtp.gmail.com with ESMTPSA id l4sm358564wmh.8.2021.04.12.12.48.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 12:48:49 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <a27d13db-8ed9-8f14-b59e-84a18aa9caed@ettus.com>
Date: Mon, 12 Apr 2021 21:48:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <7gR7P4ecewRVaZ5OkClnlvHxYvbb83HVVQK8smQoz8@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: AEMKLDH27PJ2ELQOUNKLI33CKKV27BQT
X-Message-ID-Hash: AEMKLDH27PJ2ELQOUNKLI33CKKV27BQT
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AEMKLDH27PJ2ELQOUNKLI33CKKV27BQT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG0sIHRoaXMgbG9va3MgbGlrZSB0aGUgRUVQUk9NIG9uIHRoZSBCMjA1IGNvbnRhaW5pbmcgdGhl
IGJvb3Rsb2FkZXIgLyBpbml0aWFsIFVTQg0KaWRlbnRpZmllciBjb2RlIGZvciB0aGUgVVNCIGNo
aXBzZXQgaXNuJ3QgcXVpdGUgcmlnaHQuDQoNCkdvb2QgbmV3czogeW91IGNhbiBmaXggdGhhdCEN
Cg0KV2hlbiB5b3UgYnVpbHQgVUhELCBiMnh4X2Z4M191dGlscyBnb3QgYnVpbHQgYWxvbmcgdGhl
IHdheSwgYW5kIGlzIHByb2JhYmx5IGluc3RhbGwgdW5kZXINCnNvbWV3aGVyZSBsaWtlICRQUkVG
SVgvbGliNjQvdWhkL3V0aWxzIG9yIHNvLg0KDQpZb3UnbGwgbmVlZCB0byBsb2NhdGUgdXNycF9i
MjAwX2JsLmltZyA7IGl0J3MgcHJvYmFibHkgYmVlbiBkb3dubG9hZGVkIGFsb25nc2lkZSB3aXRo
IHRoZQ0Kb3RoZXIgZmlybS0gYW5kIGdhdGV3YXJlIGltYWdlcyB0byAkUFJFRklYL3NoYXJlL3Vo
ZC9pbWFnZXMvDQoNClRoZW4sIGl0J3MganVzdCBhIG1hdHRlciBvZiBjYWxsaW5nDQoNCnN1ZG8g
L3BhdGgvbGVhZGluZy91cy90by9iMnh4X2Z4M191dGlscyAtQiAvZnVsbC9wYXRoL29mL3VzcnBf
YjIwMF9ibC5pbWcNCg0KQmVzdCByZWdhcmRzLA0KDQpNYXJjdXMgdGhlIG90aGVyDQoNCkRJU0NM
QUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3ZpZGVkIEFzIElzLiBJdCBoYXMgbm90IGJl
ZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3ll
ZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1c2UgaW4gaGF6YXJkb3VzIGVudmlyb25t
ZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRo
ZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhlIGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3Ig
UkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2Vz
IHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9z
ZHItc29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxsIG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBi
YXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9y
IHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRoZSBwcm9kdWN0aW9uIG9yIGRl
dmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkg
YW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBpbiB0aGUgbGljZW5zZSBy
ZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQYXJ0IDc0NCwgVS5TLiBF
eHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3VjaCBhIGNvbXBhbnkg
aXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcg
aXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVj
aWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNl
IERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJvY2VlZCBmdXJ0aGVyLg0K
DQpPbiAxMi4wNC4yMSAyMToxNSwgcGFyYWRpc0Brd2Vzc3QuY29tIHdyb3RlOg0KPg0KPiBUaGlz
IGlzIHRoZSBvdXRwdXQgb2Yg4oCYZG1lc2cgLXdI4oCZIGFmdGVyIHBsdWdnaW5nIGluIHRoZSBC
MjA1Lg0KPg0KPg0KPiBbQXByMTIgMTU6MTRdIHVzYiAxLTE6IG5ldyBoaWdoLXNwZWVkIFVTQiBk
ZXZpY2UgbnVtYmVyIDExIHVzaW5nIHhoY2lfaGNkDQo+DQo+IFsgKzAuMTQ4Njk0XSB1c2IgMS0x
OiBOZXcgVVNCIGRldmljZSBmb3VuZCwgaWRWZW5kb3I9MjUwMCwgaWRQcm9kdWN0PTAwMjIsIGJj
ZERldmljZT0gMS4wMA0KPg0KPiBbICswLjAwMDAwNl0gdXNiIDEtMTogTmV3IFVTQiBkZXZpY2Ug
c3RyaW5nczogTWZyPTEsIFByb2R1Y3Q9MiwgU2VyaWFsTnVtYmVyPTMNCj4NCj4gWyArMC4wMDAw
MDNdIHVzYiAxLTE6IFByb2R1Y3Q6IFdlc3RCcmlkZ2UNCj4NCj4gWyArMC4wMDAwMDNdIHVzYiAx
LTE6IE1hbnVmYWN0dXJlcjogQ3lwcmVzcw0KPg0KPiBbICswLjAwMDAwM10gdXNiIDEtMTogU2Vy
aWFsTnVtYmVyOiAwMDAwMDAwMDA0QkUNCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
