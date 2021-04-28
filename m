Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF7136E112
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:39:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08143384C05
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:39:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GV8ty5pX";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CC05384996
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 17:38:50 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id f12so47800371qtf.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 14:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=aIjY/iluJUhJBDIL+sQdnmw7aSoSKDmJGkWCfqUO13Y=;
        b=GV8ty5pX1ofssqgNSB1jUKpH4mVvWLtgq8cjtaQLbyTy45i/rmckC0K7jp47o6Z6sY
         DC5mZAPYstXSdVHtgYcV8yxMUFaXYEFjw/Q+bVv8ql6dy8x7e4REeCJmv5t/On1IGu+G
         XxycUHziJiJIJuj9WA0sKMwvgNspjqX67NqKxXjT5Bwe5VE6fTVDJAAhtQKGk3Yf4HAF
         rQQDBVi9OjsFKSAzEPd/72CvsiHHwVCV+AB7BmUuJILcszUuL/dJI1SIh0PTGH8iDTXg
         U4tVPZKG/8ETl0usUjtqmSyVlA6wr7Wek0OZ6KQjKsKJXQOCHjcNpFCUeR8c8t+0A5fx
         X2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=aIjY/iluJUhJBDIL+sQdnmw7aSoSKDmJGkWCfqUO13Y=;
        b=eGMwKcz/2w2UP8uEcu/IH4BTSdIIKi0HuAulZt6kdGn21jX+BvWWIctidhZKFWfOKq
         npea9fTAL/ojeWeA10qnPBQ0434M8DIyCXyBVFify1lpJmL56ok2AXwxdoCeR9P7wd/7
         ElHZfaE9fcFfrycV00DKU0saSg6X9ily8DPu7/6KxXt8/sA7MrdHLFhVALgSFQI1zD7t
         tkApypvujx7Vl51m3MgryMQoX47vtlhb4sY7p/+f1oAEtafrGw6oz1OgCm7oV07VcToR
         VYFVVngx1CjgMhd3hJ11i+sI0oKIwYw0l+4pIpjzvZHo+FsoYuEi5ofaHtqOMLB5NKxW
         dSMA==
X-Gm-Message-State: AOAM532fQk6yJ52LckTNPMo6++Raob9Iqg7wGlzmCcP6Xr1H8nXbRL1s
	B6VFual2fGs9p+GWR5CjUX/losPCR+Gu0g==
X-Google-Smtp-Source: ABdhPJy2XJQLGhV0Ocjh+c2kF9GKyi2Gd7aDuL++RG8/W3OflHnDSX0bz8YL320oOczCUnSaXsBvaw==
X-Received: by 2002:ac8:4910:: with SMTP id e16mr28893409qtq.370.1619645929423;
        Wed, 28 Apr 2021 14:38:49 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id a22sm887040qth.41.2021.04.28.14.38.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:38:49 -0700 (PDT)
Message-ID: <6089D5E8.5090805@gmail.com>
Date: Wed, 28 Apr 2021 17:38:48 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5LW7qm73jXrN6btklV14oEjlHGVDkbldDD2OTpwbQ@lists.ettus.com>
In-Reply-To: <5LW7qm73jXrN6btklV14oEjlHGVDkbldDD2OTpwbQ@lists.ettus.com>
Message-ID-Hash: AAMXEED77W7MSSUKTOJIDFK53NQQQ3DW
X-Message-ID-Hash: AAMXEED77W7MSSUKTOJIDFK53NQQQ3DW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAMXEED77W7MSSUKTOJIDFK53NQQQ3DW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 04/28/2021 10:18 AM, arjan.feta@unifi.it wrote:
>
> Hi Dustin, thak you for your response.
>
> I apologise for the error in my question. Of course I have already=20
> managed to bring the sines down to 1.5G Hz and 1.95 GHz through an LNB=20
> module;
>
> so the signals fall inside the TwinRX working bandwidth. In fact, I=20
> can receive the signals one at a time, but I can=92t tune the channels=20
> independently at 1.5GHz and 1.95 GHz
>
> and receive them to the host machine in parallel.
>
> Arjan
>
>
Arjan, could you perhaps share the Gnu Radio "flow graph" you're using=20
with us here on the list?

You report that it "doesn't work", but there are so many things you=20
could actually mean by that, so having the flow-graph for
   us to examine (or a minimal example that shows the problem), along=20
with a more-detailed problem report will help us all
   help you.

Cheers
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
