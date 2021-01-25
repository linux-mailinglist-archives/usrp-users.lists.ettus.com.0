Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A76302F01
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 23:28:16 +0100 (CET)
Received: from [::1] (port=35962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4ALB-0007or-02; Mon, 25 Jan 2021 17:28:09 -0500
Received: from mail-ej1-f52.google.com ([209.85.218.52]:41098)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l4AL7-0007k0-6D
 for USRP-users@lists.ettus.com; Mon, 25 Jan 2021 17:28:05 -0500
Received: by mail-ej1-f52.google.com with SMTP id g12so20331534ejf.8
 for <USRP-users@lists.ettus.com>; Mon, 25 Jan 2021 14:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Oeoxdhon2gzzBqHBEPQ3dtjRAB/U7TTnCq7BNMrvLWA=;
 b=zd/y8PHdeUOUOQLLDLrsvvAU8C4PRm49xf6I0iXHLNz9/seIyDVXwMWdPM1fgdvxcU
 zijeK4iOMz1UqX6taY/E7SeTuO+uAvynCDgIiGB/S3woPxSD364WScyl32BI1SJwtsHE
 V7L3n2ZtqXQWVsPdLcytDiqOIipQLoftWVzz8Y2EleDxt4pB3bAcNgfOqx/KpQUvYRO2
 7MOnBzjJzzI64ZFS8ida2Rnl0VV/DR2DCQAmUVUVh44RxyjcofAW0nPWd+SAhaO4hdQq
 ZXXgYJC/QHEBDSTahZcLRqT6X9e+niA3TkmAWizkpcm6v39we83mfRClZDWwIQlQ76nN
 pATg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Oeoxdhon2gzzBqHBEPQ3dtjRAB/U7TTnCq7BNMrvLWA=;
 b=EmEavUih1abz5CvlcMtw3/+AgeG78o89q0DrliEJS0HXhjvYENO3DMMQHahUYsAMHm
 6zJKx/NCT1nIHowgHnTnDyXN8V0pf1Lw7XKrF29r+K9stW5FjR1o+wz6h9Xx+8ccOFFG
 B42gmZvw32zVR475ZAFzJmwfWT0eCc6YBaR4Vw2kkkwNPH8JzKQH3R8LiYhYiye5/uRj
 lNEpCAU+pa7St+I7R5AuUz/GxJG6mEvH1k1A1sdLGHQ037u5WHndOZxpi7DEZvtMJCJR
 lIdpQmLv6XptjoynxJdJ7pFc04VagtiGPfcCRietEkj1BhM0AYUuj9xs263mhK6LRZHv
 PH9Q==
X-Gm-Message-State: AOAM532fHfEOES6ktq8XbqWvoVPU9qwgUB5PtIZ6dYJ4vgW+7HfnW88+
 K15ddCuokVq7vL8Z8RruguewfdsGFrvaCPRL79lB/o4cpQ9q+jYY
X-Google-Smtp-Source: ABdhPJzwdHvajFDioHTxNoBrAqPqYdR6LOIbGhbEw/i2kZd4JJPKs29SAs4X88XxQO9vaJjPfS3tXuhEncueqZCayHk=
X-Received: by 2002:a17:907:2651:: with SMTP id
 ar17mr1625561ejc.98.1611613644204; 
 Mon, 25 Jan 2021 14:27:24 -0800 (PST)
MIME-Version: 1.0
References: <600f1f4f.1c69fb81.6ffb3.d431@mx.google.com>
 <994B28AD-FC51-430B-A920-1435B6D8085E@gmail.com>
In-Reply-To: <994B28AD-FC51-430B-A920-1435B6D8085E@gmail.com>
Date: Mon, 25 Jan 2021 16:27:13 -0600
Message-ID: <CAAg5+MwVpWeHdJafLvkkWz=WS=SdXK9_ZJ9TqXQpEfnMXoKBiA@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] uhd4.0 and blocks with multiple ports
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

SSBhZ3JlZSB0aGF0IHRoaXMgcXVlc3Rpb24gaXMgbW9yZSBpbiB0aGUgZG9tYWluIG9mIEdOVVJh
ZGlvLCBidXQgSSBkbwp3YW50IHRvIHBvaW50IG91dCB0aGF0IFJGTm9DIDQuMCBibG9ja3MgbW9z
dCBjZXJ0YWlubHkgY2FuIGhhdmUKZGlmZmVyZW50IG51bWJlcnMgb2YgaW5wdXRzIGFuZCBvdXRw
dXRzLiBBIGdvb2QgZXhhbXBsZSBpcyB0aGUgUkZOb0MKRm9zcGhvciBibG9jazoKCmh0dHBzOi8v
Z2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC90cmVlL21hc3Rlci9mcGdhL3VzcnAzL2xpYi9y
Zm5vYy9mb3NwaG9yCmh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21h
c3Rlci9ob3N0L2luY2x1ZGUvdWhkL3Jmbm9jL2Jsb2Nrcy9mb3NwaG9yLnltbAoKVGhlIEdSIDMu
OCBzdXBwb3J0IGZvciB0aGlzIGJsb2NrIChhbmQgb3RoZXIgVUhEIDQuMCBSRk5vQyBibG9ja3Mp
IGlzCmluIGdyLWV0dHVzOgoKaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0
dXMvYmxvYi9tYXN0ZXIvZ3JjL2V0dHVzX3Jmbm9jX2Zvc3Bob3IuYmxvY2sueW1sCgpCZXN0IHJl
Z2FyZHMsCkFhcm9uCgpPbiBNb24sIEphbiAyNSwgMjAyMSBhdCAzOjI1IFBNIE1hcmN1cyBEIExl
ZWNoIHZpYSBVU1JQLXVzZXJzCjx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4K
PiBUaGlzIGlzIGNsZWFybHkgYSBxdWVzdGlvbiBmb3IgdGhlIGRpc2N1c3MtZ251cmFkaW8gbWFp
bGluZyBsaXN0Lgo+Cj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Cj4gPiBPbiBKYW4gMjUsIDIwMjEs
IGF0IDI6NDMgUE0sIGRhcmlvIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gPgo+ID4g77u/Cj4gPiBIaSwKPiA+IEkgY3JlYXRlZCBhIGJsb2NrIHdp
dGggdHdvIG91dHB1dCBwb3J0cyBhbmQgb25lIGlucHV0IHBvcnQgaG93ZXZlciB3aGVuIGkgdHJ5
IHRvIGNvbm5lY3QgaXQgdmlhIHN0cmVhbSBlbmRwb2ludHMgZ251cmFkaW8gY29tcGFuaW9uIGNs
YWltcyBpdCBkb2Vzbid0IGtub3cgaG93IHRvIGhhbmRsZSB0aGlzLiBJIHRoZW4gYWRkZWQgYSBz
ZXhvbmQgaW5vdXQgYXMgaSByZWNhbGwgdGhhdCBvbiB1aGQgMy4xNSBpdCBpcyBuZWNlc3Nhcnkg
dG8gaGF2ZSBhcyBtYW55IGlucHV0cyBhcyBvdXRwdXRzIGJ1dCBpdCBnYXZlIGJhY2sgdGhlIHNh
bWUgZXJyb3Igbm93IHNheWluZyBpdCBkb2Vzbid0IGtub3cgaG93IHRvIGNvbm5lY3QgYmxvY2tz
IHdpdGggdHdvIGlucHV0cyBhbmQgdHdvIG91dHB1dHMuCj4gPiBJJ20gYSBiaXQgY29uZnVzZSBi
ZWNhdXNlIGl0IHNlZW1zIHJhZGlvIGZvciBleGFtcGxlIGhhcyB0d28gb3V0cHV0cyBob3dldmVy
IGl0IGlzIHN0YXRpY2FsbHkgY29ubmVjdGVkLiBJcyBpdCBhdCBhbGwgcG9zc2libGUgdG8gaGF2
ZSBhIGR5bmFtaWMgY29ubmVjdGlvbiBvZiBhIGJsb2NrIHdpdGggbXVsdGlwbGUgb3V0cHV0cz8g
V2hhdCBpcyB0aGUgcG9zc2libGUgcmVhc29uIHdoeSBub2RlIG1hbmFnZXIgcmVwb3J0cyBpdCBk
b2Vzbid0IHN1cHBvcnQgdGhpcyBjb25uZWN0aW9uPwo+ID4KPiA+IFRoYW5rcywKPiA+Cj4gPiBE
YXJpbwo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ID4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KPiA+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20K
