Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65946302A6C
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 19:38:23 +0100 (CET)
Received: from [::1] (port=34260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l46km-00029g-18; Mon, 25 Jan 2021 13:38:20 -0500
Received: from mail-ed1-f43.google.com ([209.85.208.43]:45921)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l46kh-00023u-Sj
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 13:38:15 -0500
Received: by mail-ed1-f43.google.com with SMTP id f1so16660227edr.12
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 10:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=LbU7ZTG7UxIYJoNLDj6M9TL0HDgEcdCwaxK1+Gg0SQE=;
 b=GZoa631ngN5A8pBeS9wgKfR4KuH7/t22V91QSERqZMy1pHzzWh97xGYTE4awECG5q4
 ATPfiY1oPrfFsPbKcC9zqWdSELjcQ1D1hH8bQdloxEpPBzeEfKeBe296I5UW8uOQSIsv
 BoGP2D5FuGqUI3F/cI9Ofv3T3G5o0Ex2Mh2Hc0gi/b0wVSz2E2xTiOXD/P9QNRTHk+uk
 Ln7fUb0IKZR+KnpJeo4lTJTaGVYU+5hzocsg5Rnir4460fg3199PIVN0mkY9qJJfC5T/
 xbTIcReE1zl/KIXNU1ShZOxVLrEySPCDF3ulfsuXSguI7ZM7cIBMWYWt9+xuegNpgTwY
 WsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=LbU7ZTG7UxIYJoNLDj6M9TL0HDgEcdCwaxK1+Gg0SQE=;
 b=Wl5yRh1AQiPq/7SGbMYaIe5zOrle4GpJ+2zpyR0BIN5AVPMqMWrdFOo7TFWnKrRd+E
 hKL2wmKcSxQ937ZfsWchzSRBcHnPF4womlczoBvtXBKfWLJ30Y7xCMirc5mF61d15fnM
 GM46BMZXDmtKDj+bCf0W0X6mO4iRk0z2NtAJvghY+UvJFR36hoagcifR0lAwILYhB5dE
 fT7stuXkTWT40BsZKg6s1CZYfnTVxXVqpXazX3AI4o4rhTPSnv2iGvrgpSmV7b4fgJCv
 fVjOJvHQdStWGQcc0slcj0WA3lN0eYyzozzhc1Cc4bMZUu0A8po2pONzTRgKsjAE/AVt
 vVVw==
X-Gm-Message-State: AOAM5302kjaPilRj8CmHIctadQqDZc2p+8GVu7eJnJi+MEyuOYmIFYtK
 sxfDIBqL6N3TlwAyMbMjvXsl7daqcjUAsIPnOUZujmNsvrGy47RL
X-Google-Smtp-Source: ABdhPJzapLr5ZARB2bDhloDWFr+SehPk5blA/BoHAqDd8tCaoTINLmDCvdIK5a6nmG1srg4JjMEUfw6wPp5UAZk+hQ8=
X-Received: by 2002:aa7:d386:: with SMTP id x6mr1668092edq.194.1611599854824; 
 Mon, 25 Jan 2021 10:37:34 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
 <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
 <20210122150220.ooerbxb22ndwefh6@barbe>
 <CAB__hTQ_uqCHC5PN5wNWy=vvm5Z-fDDuqD1JMq4L3ksMh342Hg@mail.gmail.com>
 <20210125173259.2dw25idii7hfqlfx@barbe>
In-Reply-To: <20210125173259.2dw25idii7hfqlfx@barbe>
Date: Mon, 25 Jan 2021 12:37:23 -0600
Message-ID: <CAAg5+Mz4njATFwgEDD80zTUA7PA-6O+vpxN9Q4MhmrVpqbyJmQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTE6MzMgQU0gQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVT
UlAtdXNlcnMKPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKCj4gU28gdGhlIGFj
dGlvbiBpcyBwcm9wYWdhdGVkIGJ5IHRoZSBnYWluIGJsb2NrIGlpZiB0aGUgY29udHJvbGxlciBp
cwo+IGJ1aWx0IHdpdGggVUhEIGFuZCBoZW5jZSByZWNvZ25pemVkIGJ5IHVoZF91c3JwX3Byb2Jl
Lgo+IEJ1aWxkaW5nIHRoZSBjb250cm9sbGVyIGFzIE9PVCBtYWtlcyB0aGUgYmxvY2sgdW5yZWNv
Z25pemVkIGFuZAo+IGhlbmNlIGZhbGxzIGJhY2sgdG8gbmFtZSAnQmxvY2snIGFuZCBjb250cm9s
bGVyICdub2NfYmxvY2tfYmFzZScsCj4gdGhhdCBkb2VzIG5vdCBzZWVtIHRvIGZvcndhcmQgaXNz
dWVfc3RyZWFtX2NtZC4KPgo+IEFsbCBvZiB0aGlzIGlzIHF1aXRlIGluY29udmVuaWVudCAoZm9y
IG1lKS4KPiBEbyB5b3Uga25vdyBpZiB0aGVyZSBpcyBhbiBpbnRlcm5hbCByb2FkbWFwIHRvIGZp
eCB0aGlzPwoKVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gYnVpbGQgdGhlIG1vZHVsZSB3
aXRoIFVIRCBhbmQgZGlzY292ZXIKdGhlIGluY29uc2lzdGVudCAoYW5kIEkgYWdyZWUgaW5jb252
ZW5pZW50KSBiZWhhdmlvci4gSSB3b3VsZCBsaWtlIHRvCmVuY291cmFnZSB5b3UgdG8gZmlsZSBh
biBpc3N1ZSBhYm91dCB0aGlzIG9uIHRoZSBVSEQgaXNzdWVzIHBhZ2UgYXQKaHR0cHM6Ly9naXRo
dWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2lzc3Vlcy4gVGhhdCB3YXkgd2UgY2FuIGVuc3VyZQp0
aGF0IGl0IGlzIG9uIG91ciByYWRhci4KCkJlc3QgcmVnYXJkcywKQWFyb24KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
