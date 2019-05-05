Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 732BF1422B
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 21:51:34 +0200 (CEST)
Received: from [::1] (port=38276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNNAZ-0007U6-ID; Sun, 05 May 2019 15:51:31 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:54775)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hNNA2-0007LF-2M
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 15:51:28 -0400
Received: by mail-wm1-f47.google.com with SMTP id b10so13259019wmj.4
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 12:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=aLB2+9UhExqs8OtxwJ6UUr0Jr/gHX+CXKwylGJ+I6EI=;
 b=gDZWN5SA8kvsKzhfSfPlUCUxHrY2B3zxau35rvtsNGggS9Q/0yPjv6wke6Gxqsq3qC
 9lcYIKIUthcCxTBbPm5IDF6ajczq1K1KU3uImazC5w5D4hvFQvBCFZ2nuoVA9AwFN0Ta
 CHo4r07j76cv3kD+ECF1RGs68Eoc3bJyITRbW4WujQGG1+maJyduMYrnoLJZ/V2ugTCG
 UpT7BOsOiTJ2Yc0bJxm4NSklSSaChNgiqIPlM2qGy+GVoB4m6q9ZLfFzDnbkUMEmIyC/
 DPC8n2B4gYm2NAFT6Kprf1DJIrm/Mrs+/ldoo4lxTdnmO2QnQayD86LWtpQIn+jsJMu6
 pFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=aLB2+9UhExqs8OtxwJ6UUr0Jr/gHX+CXKwylGJ+I6EI=;
 b=i1tOTL9yBYC5MAmr5HTI64GGIsMrNZ+9LHfQ5FtBBFyO84b8AW85IqxiMc/OjNJdnS
 uXqeEKiDtc67Hh1HaJhRum1UX2CYcAyB03u6KT9DXy7oIaVa3WMjKVv7WpEgwiK22Bvb
 yEd0X3LImc0tiZtriGgbujRLTnnl+H9XlUX/QQIhBd95HDCf95fFwW/Y3H00pUmywIxa
 fTSfYQNhfuXHrYBOK4fPnzxv38IUmX5M3y5a6GKPZ2dt6mNwF1SewXsjVQ3rS/bHZH82
 35mOxfaEOqWyUXSI0zvsxuJNVYPlaEdXDY6uLQXKVqxc01WuMGlH3ubAvHvRLvrKmykL
 4XkQ==
X-Gm-Message-State: APjAAAUnjXqPVuPYv8ljsYm8Xy+F4ymKHzY99PAUTml4o13LDP1C49G1
 PenvxObBZSD2l50Gds3Lgp53jNUn
X-Google-Smtp-Source: APXvYqyeYrDR5pm5omOWO0krzMh3bUc8UNrWOZnj01/KhuMZcrW0xwVaCKJxOL5b67/+2Ndp5rjGhg==
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr14645339wmk.9.1557085817164;
 Sun, 05 May 2019 12:50:17 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id b12sm14702485wrf.21.2019.05.05.12.50.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 05 May 2019 12:50:16 -0700 (PDT)
Message-ID: <c12f8d6ac3accd3f0df0550a532a7779dac1ffd0.camel@ettus.com>
To: Rensi Mathew <rensisam@yahoo.co.in>, Vsr Ravi via USRP-users
 <usrp-users@lists.ettus.com>, Robin Coxe <robin.coxe@ettus.com>
Date: Sun, 05 May 2019 21:50:15 +0200
In-Reply-To: <1512147364.461598.1557084229705@mail.yahoo.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
 <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
 <1512147364.461598.1557084229705@mail.yahoo.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
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

U28sIHdoYXQgYXJlIHRoZSBvcHRpb25zIHdpdGggd2hpY2ggeW91IHJ1biB1c3JwX3NwZWN0cnVt
X3NlbnNlPwoKCk9uIFN1biwgMjAxOS0wNS0wNSBhdCAxOToyMyArMDAwMCwgUmVuc2kgTWF0aGV3
IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+IFllcyBVU0IgMy4wLiAKPiAKPiBUaGUgT1MgaXMgVWJ1
bnR1IDE2LjA0IExUUyA2NC1iaXQKPiBJbnRlbMKuIENvcmXihKIgaTUtNDU3MCBDUFUgQCAzLjIw
R0h6IMOXIDQgCj4gRGlzayAzMDkuNiBHQgo+IE1lbW9yeSAzLjYgR2lCCj4gCj4gQ291bGQgaXQg
YmVjYXVzZSBvZiBtZW1vcnkgcHJvYmxlbT8KPiBUaGUgeWVsbG93L29yYW5nZSBsaWdodCBpbiB0
aGUgc3lzdGVtIGJsaW5rcyB3aGVuIFVTUlAgcnVucyhzaG93aW5nCj4gaGVhdmlseSBsb2FkZWQp
Lgo+IAo+IFJlbnNpCj4gT24gU2F0dXJkYXksIDQgTWF5LCAyMDE5LCAxMDowOTowMyBhbSBJU1Qs
IFJvYmluIENveGUgPAo+IHJvYmluLmNveGVAZXR0dXMuY29tPiB3cm90ZToKPiAKPiAKPiBBcmUg
eW91IHVzaW5nIFVTQiAzLjA/ICBVU0IgMi4wIHdpbGwgbWF4IG91dCBhdCBhYm91dCA4IE1zL3Mu
ICAKPiAKPiAKPiAKPiBSb2JpbiBDb3hlIHwgQ2hpZWYgUiZEIFByb2dyYW0gTWFuYWdlciwgU0RS
IHwgU2FudGEgQ2xhcmEsIENBIHwKPiA0MDguNjEwLjYzNjMKPiAgCj4gRnJvbTogVVNSUC11c2Vy
cyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4gb24gYmVoYWxmIG9mCj4gUmVu
c2kgTWF0aGV3IHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiBT
ZW50OiBGcmlkYXksIE1heSAzLCAyMDE5IDk6MTcgUE0KPiBUbzogVnNyIFJhdmkgdmlhIFVTUlAt
dXNlcnMKPiBTdWJqZWN0OiBbVVNSUC11c2Vyc10gQjIwMCBPdmVycnVuCj4gIAo+IERlYXIgc2ly
Cj4gSSBhbSB1c2luZyBCMjAwIFNEUiB0byBydW4gdGhlIHByb2dyYW0gdXNycF9zcGVjdHJ1bV9z
ZW5zZS5weSB3aXRoIGEKPiBzYW1wbGluZyBmcmVxdWVuY3kgb2YgMTZlNi4KPiBJIHRoaW5rIEkg
YW0gdXNpbmcgYSBmYWlybHkgbG93IHNhbXBsaW5nIHJhdGUuCj4gU3RpbGwgSSBhbSBnZXR0aW5n
IHNvbWUgJ09PT08nLgo+IAo+IENvdWxkIHNvbWVvbmUgdGVsbCBtZSB0aGUgcG9zc2libGUgcmVh
c29ucyBmb3IgdGhlIHNhbWU/IEFuZCBob3cgSQo+IGNhbiBhdm9pZCB0aGUgc2FtZT8KPiAKPiBU
aGFua2luZyB5b3UKPiBSZW5zaSBTYW0KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
