Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FF63A6625
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 13:57:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CB263843EB
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 07:57:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="uMbKTQDl";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B4E22384099
	for <USRP-users@lists.ettus.com>; Mon, 14 Jun 2021 07:56:22 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id 93so8231036qtc.10
        for <USRP-users@lists.ettus.com>; Mon, 14 Jun 2021 04:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=TSOl9ymd2iWMxNNyVnlbkLFBfqszfWkH3/5ed4DAiFg=;
        b=uMbKTQDlsTxhkTfLDaEAE7SHrTxErk7W6j+OF286Yevvr288YdkazCJxIDBFSQlHSF
         RUAPvZTP4zXOKfkRZMbqfP6m/IiatOxtPYB+e/c7bSGO2Q0fpU+giSNhMg2hajm/c6cJ
         zPkb6JbVyCF/dPW0DDKXUdvRclrVTqeuCyrUEzqLsigv2scGSA9O1MCi3H+erygraAjQ
         7kEfP+Oc4KamCSniPQ4yeAESJ0YnUwzcanaIRrpI5ngLsmLaJx74J+wrue0iHY18Nk4V
         ZI6uv1kRAiggZt+nSIve4/UFZ6sijGK1ytD1qdf69TIAdvFM+rBje31D92c8D2wVIPTZ
         sJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=TSOl9ymd2iWMxNNyVnlbkLFBfqszfWkH3/5ed4DAiFg=;
        b=B3YXWk90Mh9+OdzT85M/JPu/kMNpxTVokYdn66xcCjoPRTS9cOAGv1jQ5Hv1PkoVP5
         cJ8ErDOs2pQTv59PtoJ123Uai+vIZQUJIlaEo2C3ZzFU+NdbH+zfDVWJ70vtZQloul8c
         jVF4Mw9phmBENLP3F4Ny0qvQivd78xWUYgMGhuR4i0P0Ie+P1jgWJBYtfebo+Vy/HTcH
         rvRGM4YYkewYrchobE6oqRCgwhHyB/0KwJQDwlud9g/ij2In16+DfO0FVlIYKpj+A5xo
         EC8ar1TYt5QBT4j4e8YnWvniXStrB3kRwKaxlUVh0Cg4IkGLecH+Netn0qbqxOyqWUzr
         dwYw==
X-Gm-Message-State: AOAM532dAMFo0GBzSbt7vai11TULhaIHMhwwAsywjJVVmIxgEkGMfGyz
	UW2nIDrLmYGWh5Ad2EYT0zXImroLqsgEdw==
X-Google-Smtp-Source: ABdhPJwb3CZL79KLwVjXV09ykMk+5dOMavAQ5tKFxuxGmSAO7oEOZTY8exJhbUhOkgo8LVx92+wUpw==
X-Received: by 2002:ac8:740b:: with SMTP id p11mr14584479qtq.372.1623671782032;
        Mon, 14 Jun 2021 04:56:22 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id u123sm9880536qkh.83.2021.06.14.04.56.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 04:56:21 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Jun 2021 07:56:20 -0400
Message-Id: <6FE71A04-567D-4089-9A7D-C01D3F519049@gmail.com>
References: <CADjF3Pyo3O20BdbobJggFjJ_kotDawz-4-op3XB2EZTSFsmKNw@mail.gmail.com>
In-Reply-To: <CADjF3Pyo3O20BdbobJggFjJ_kotDawz-4-op3XB2EZTSFsmKNw@mail.gmail.com>
To: Martin Elfvelin <marelf-5@student.ltu.se>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: XLPWW6CHZBRJGKUMZZVTD4HE5NCY5UVS
X-Message-ID-Hash: XLPWW6CHZBRJGKUMZZVTD4HE5NCY5UVS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 output power for power amplifier
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLPWW6CHZBRJGKUMZZVTD4HE5NCY5UVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWF4aW11bSBvdXRwdXQgcG93ZXIgb2YgdGhlIEIyMDAgaXMganVzdCBhIGxpdHRsZSBvdmVyIDEw
ZEJtLCBkZXBlbmRpbmcgb24gZnJlcXVlbmN5LiANCg0KU29tZSBkaXN0b3J0aW9uIG1heSBvY2N1
ciB3aGVuIGl0IGlzIHJ1biBuZWFyIHRoZSBtYXhpbXVtIGxldmVscy4gDQoNClNlbnQgZnJvbSBt
eSBpUGhvbmUNCg0KPiBPbiBKdW4gMTQsIDIwMjEsIGF0IDU6MjAgQU0sIE1hcnRpbiBFbGZ2ZWxp
biB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPiAN
Cj4g77u/DQo+IEhlbGxvIGFsbCwNCj4gDQo+IEknbSB0cnlpbmcgdG8gZmluZCBhIHBvd2VyIGFt
cGxpZmllciBmb3IgdXNlIHdpdGggYSBCMjAwIHRyYW5zbWl0dGVyIGFuZCBJJ20gd29uZGVyaW5n
IHdoYXQgd291bGQgYmUgdGhlIGJlc3QvbW9zdCBjb21mb3J0YWJsZSBvdXRwdXQgcG93ZXIgZm9y
IHRoZSBCMjAwIHRvIG9wZXJhdGUgYXQ/IEkgZG9uJ3Qga25vdyBpZiB0aGUgc2lnbmFsIHF1YWxp
dHkgaXMgYWZmZWN0ZWQgYnkgdGhlIG91dHB1dCBsZXZlbCBvZiB0aGUgcmFkaW8gYnV0IG15IGZp
cnN0IHRob3VnaHQgd2FzIHRvIG91dHB1dCBhcm91bmQgMTAtMTUgZEJtIGZyb20gdGhlIEIyMDAg
aW50byB0aGUgYW1wbGlmaWVyLiBBbnkgdGhvdWdodHMgb24gdGhpcz8NCj4gDQo+IEJlc3QgcmVn
YXJkcywNCj4gTWFydGluIEVsZnZlbGluDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
