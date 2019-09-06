Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C85BAC1C3
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 23:00:58 +0200 (CEST)
Received: from [::1] (port=60710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6LLf-0004Kw-FN; Fri, 06 Sep 2019 17:00:51 -0400
Received: from mail-pl1-f177.google.com ([209.85.214.177]:40883)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1i6LLc-0004Eo-C4
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 17:00:48 -0400
Received: by mail-pl1-f177.google.com with SMTP id y10so3744979pll.7
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 14:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=mb4FKbvhQv8ZzRToaFnQu+DMkWFClI3QpQF8ub6zKQg=;
 b=PSwggsLliVPqR9H+6EJmamtvIkb5tx35N0JDi6F9Jr7pJQ9Z+Xv0qfea3uLMq9bR1G
 MIGvTedcXyafnZWqJk1rjQYfZGwEmjKE4JJD9A+B7axUthZG1kjS2DIkZphgZtilfY1q
 8aQCyv2rzyN84iJzyaLPZjbfEXGd3nYJYrpGEJKAlCklO6tT41KNMPpmhCEC08HQM83o
 sJs6xo0xKvxp2EGk4B5TXviprfIeyV6Dzh8SpKZwM0MR/XCCGXfQnkVi0iC1WR2hkcIl
 1xVrNdy7M9sZ1DFdFcMTasMXsB0vd2qavC9vpZbjXsD8G53StxvmbSJ08apZOllVLa5V
 +qgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=mb4FKbvhQv8ZzRToaFnQu+DMkWFClI3QpQF8ub6zKQg=;
 b=Gfl83PJB48idO+RjuVl+xbgylAuDL4Xb/MR4LcdffcER5yUGuVI+ZqD0jRZygAnEA/
 4IRkS74nIixPOAboDHYW8sboytkOL6G8mS0QgyoaS2UlsMGrIuhyuLKrtwdzS+nbJ6Pm
 8Cn+UYTG/rbem2hiaOG0eMMppahmjQ7VKeM+FGkluK9OVGj/S1S+DJeAs4e1Has5/I13
 F0sUN1IJGjMn57VMgIjSgi+H+xN6UD4DvJtn7zmogjhOIPl909YSJ3Q9R0COorl5RU5C
 FbqcrmmCTiL+h6VDOGOMRRE8ujHgq7mOeTl2OEK12w/q7UPjbhdlfWYI+47Yr0pqmcn6
 zlvA==
X-Gm-Message-State: APjAAAWok7ruT+7Fpbt0L1ABy3lTptLKgDeUX/jL2r58IUvtiE1JlAFV
 XT3whCzE0Zz6b7V2Ky4asAGB6e6X
X-Google-Smtp-Source: APXvYqwR2g4oBOfqSUdTAOyTvMDWW/YznNvI8tBjXFgO9CWrrJdeoyHg0T2BKXNg06KlZ570GNYKLw==
X-Received: by 2002:a17:902:a58c:: with SMTP id
 az12mr11645295plb.129.1567803607303; 
 Fri, 06 Sep 2019 14:00:07 -0700 (PDT)
Received: from racer.hostalia.de ([207.114.172.158])
 by smtp.gmail.com with ESMTPSA id z23sm5822038pgi.78.2019.09.06.14.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 14:00:06 -0700 (PDT)
Message-ID: <84a673b3ca7caa1721171d4b5494c2eee03b448e.camel@ettus.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Date: Fri, 06 Sep 2019 23:00:05 +0200
In-Reply-To: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
References: <DM6PR03MB3788A6E68F615BF33C687A8FE6BA0@DM6PR03MB3788.namprd03.prod.outlook.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC SVD Block
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

SGVsbG8gQWRuYW4sCgpJJ20gY3VycmVudGx5IG5vdCBhd2FyZSBvZiBhbnlvbmUgZG9pbmcgdGhh
dC4KCkhvd2V2ZXIsIHNpbmNlIG9uZSBvZiB0aGUgdHlwaWNhbCBhcHBsaWNhdGlvbnMgb2YgYmVl
ZmllciBGUEdBcyBpcyBtYXRoCmFjY2VsZXJhdG9ycyBmb3IgbGluZWFyIGFsZ2VicmEgcHJvYmxl
bXMsIGl0J3MgbW9yZSB0aGFuIGxpa2VseSBzb21lb25lCmRpZCBpbiBmYWN0IGltcGxlbWVudCBh
biBTVkQgYmVmb3JlLCBhbmQgeW91IG1pZ2h0IGp1c3QgbmVlZCB0byBjb25uZWN0Cml0IHRvIGEg
bm9jc2hlbGwgdG8gbWFrZSBpdCB3b3JrIGluIFJGTm9DLiBUaGVyZSdzIGEgbG90IG9mIGludGVy
ZXN0aW5nCnBhcGVycyBvdXQgdGhlcmUgb24gU1ZEIGltcGxlbWVudGF0aW9ucyBmb3IgZml4ZWQg
cG9pbnQgbWF0aCBvbiBGUEdBcywKSSB0aGluayBEcmV4ZWwgdW5pIGhhZCBzb21lIGludGVyZXN0
aW5nIHN0dWZmIGZvciBTVkQtYmFzZWQgY2hhbm5lbAplc3RpbWF0aW9uIGZvciBPRkRNLiBJJ3Zl
IG5vdCBzZWVuIGFueSBjb2RlIG9mIHRoZW0sIHRob3VnaC4uLgoKU28sIGZyb20gYW4gYWxnb3Jp
dGhtaWMgcG9pbnQgb2YgdmlldywgYW4gU1ZEIGlzbid0IHRvbyBoYXJkLiBJSVJDLApzZXF1ZW50
aWFsIGFsZ29yaXRobXMgY2FuIHdvcmsgaW4tcGxhY2UsIGFuZCB0aHVzIChmb3IgYSBtw5duIG1h
dHJpeCwKbj5tKSBkb24ndCBuZWVkIG1vcmUgdGhhbiBuwrIgc3BhY2UgZm9yIGludGVybWVkaWF0
ZSBhbmQgZmluYWwgcmVzdWx0CigrMm0gZm9yIGluZGV4IGFuZCBzY2FsZSBzdG9yYWdlIGlmIHlv
dSB3YW50IHRvIHBpdm90IGVsZWdhbnRseSkuCgpOb3csIEkndmUgbm90IGV2ZXIgaW1wbGVtZW50
ZWQgbW9yZSB0aGFuIGEgQysrIFFSIGRlY29tcG9zaXRpb24gKHdoaWNoCmlzIHRoZSBjb3JlIGFs
Z29yaXRobSBmb3IgbW9zdCBFVkQgcHJvYmxlbXMsIHdoaWNoIHlvdSB0eXBpY2FsbHkKaG91c2Vo
b2xkZXItdHJhbnNmb3JtIGFuIFNWRCBwcm9ibGVtIHRvKSwgc28gSSdtIHJlYWxseSBub3QgY29t
cGV0ZW50CnRvIGNvbW1lbnQgb24gaGFyZHdhcmUgaW1wbGVtZW50YXRpb25zLCBidXQgY2hhbmNl
cyBhcmUgeW91IHdhbnQgdG8KY29tcHV0ZSBhIGxvdCBvZiByZXN1bHQgdmFsdWVzIGluIHBhcmFs
bGVsIGlmIHlvdSdyZSBkb2luZyBpdCBpbiB0aGUKRlBHQSDigJMgYmVjYXVzZSBvdGhlcndpc2Us
IHlvdSdkIGFiaG9yIGRvaW5nIG11Y2ggd29yayBpbiBoYXJkd2FyZSAodGhhdApiZWluZyBfaGFy
ZF8pIGluIGZhdm9yIG9mIGRvaW5nIGl0IGVhc2llci10by1kZWJ1ZyBhbmQgYWxzbyBmcmVlLXRv
LQpoYXZlIGluIHRoZSBzaGFwZSBvZiBMQVBBQ0sgc29mdHdhcmUuIChTdWJ0ZXh0IG1lc3NhZ2Us
IG1vcmUgZm9yIGZ1dHVyZQpyZWFkZXJzIHRoYW4gZm9yIHlvdTogRXZhbHVhdGUgd2hldGhlciBz
b21ldGhpbmcgcmVhbGx5IHNob3VsZCBiZSBkb25lCmluIGhhcmR3YXJlOyBpdCdzIG5vdCBpbmhl
cmVudGx5IGJldHRlciB0byBkbyB0aGluZ3MgaW4gaGFyZHdhcmUuKQpCdXQgdGhhdCBwYXJhbGxl
bGlzbSBtaWdodCBpbXBseSB0aGF0IGluLXBsYWNlIGlzIG5vdCBhIGZlYXNpYmxlIHdheSBvZgpj
b21wdXRpbmcgdGhpbmdzLCBhbmQgeW91ciBtZW1vcnkgcmVxdWlyZW1lbnRzIG1pZ2h0IGJlIG11
Y2ggbGFyZ2VyLgpEZXBlbmRpbmcgb24gdGhlIHNpemUgb2YgU1ZEIHlvdSdyZSBwbGFubmluZyB0
byBkbywgdGhhdCBtaWdodCBvciBtaWdodApub3QgYmUgYW4gaXNzdWUuCgpCZXN0IHJlZ2FyZHMs
Ck1hcmN1cwoKT24gRnJpLCAyMDE5LTA5LTA2IGF0IDE5OjA1ICswMDAwLCBRdWFkcmksQWRuYW4g
dmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gV2UgYXJlIHRyeWluZyB0byBwZXJm
b3JtIHNpbmd1bGFyIHZlY3RvciBkZWNvbXBvc2l0aW9uLiBUaGUgaWRlYSBpcwo+IHRvIHdvcmsg
b24gYW4gUkZOb0MgYmxvY2sgdGhhdCB0YWtlcyBpbiBzdW1tYXRpb24gb2Ygc2FtcGxlcyBmcm9t
IHRoZQo+IFJhZGlvIHNvdXJjZSBhbmQgd2lsbCBwZXJmb3JtIFNWRC4KPiAKPiBJcyBhbnlib2R5
IHdvcmtpbmcgb24gc29tZXRoaW5nIHNpbWlsYXI/IAo+IEN1cnJlbnRseSwgdGhlIFJGTm9DIE9G
RE0gc3luY2hyb25pemVyIGJsb2NrIGhhcyB0aW1pbmcgY29uc3RyYWludAo+IGlzc3VlcyBhbmQg
Y2FuJ3QgYmUgdXNlZCB0byBidWlsZCBGUEdBIGltYWdlLgo+IAo+IEp1c3QgYXNraW5nIGFyb3Vu
ZCB0byBnZXQgc29tZSBzdWdnZXN0aW9ucy9hZHZpY2UgYW5kIGlkZWEgaWYgd29ya2luZwo+IG9u
IHRoYXQgVmVyaWxvZyBpbXBsZW1lbnRhdGlvbiBvZiBTVkQgaXMgc29tZXRoaW5nIGRvYWJsZSBh
bmQgaWYKPiBhbnlib2R5IHRyaWVkIGFueXRoaW5nIHNpbWlsYXIuCj4gCj4gVGhhbmsgeW91LAo+
IEFkbmFuCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCg==
