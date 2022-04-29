Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB25514FD4
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 17:46:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E0093848AF
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 11:46:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651247182; bh=SQilA56xDFdOq4V1CNn2BlsXG+W7YfHv2rb2T/5PCzY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sVffD+nSGw7mpsD138Ygr3OMxgFMYQc9GeQYTuoacjTlnxi8H8EMntN+uap3ezfZY
	 0aEElP97x5PDpKAiIUNgxeTEC7qu3dZtjLapMBa/HAag56lnQewy2eDej7a9oysIu3
	 Hvh/kYBIloRcuC0EeJ+ObS6QaRqxOkYfLoxwYkwiArb4FeFet7UYt7jz59iS8PrVlb
	 bzAXHZete/QQCf8t3ZLexNlH0taxECx2zZxmdBoPvcsbTeIxK3yqKCBPZ6Ty/Gumvn
	 dalguTcvlTew/8iZWNUnirc6aq7AaOLRDJeLGVOlDKRIV/ezL3mhv57S8GRZraqKVH
	 2BWuiejZGvXCA==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id EB0F33843FE
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 11:45:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KHjRQizg";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id u3so11323100wrg.3
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 08:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RERrhhC2uRuGvpOt5XPINB7S1SEYgGjBnuSDZn8dIdo=;
        b=KHjRQizgrcxp++mtWTOLPbLUj2AguFOQoY8ry+/xiTIyHe16Yoo/HglHV3KWBxzT72
         9Y4X1KvrKXJU2uJNgF+JhnmZmjLVVSmie/HECV/DdG7E0Y+EdICCIeWChnupyNUZqJCW
         hDXaYLK+Pt5Rilajmb3R0afRdRDWWnve0wKPLQaPSb9Q3bNJPKLkdesdSyLRryvVnnPs
         hxagtQ3qmaLpI/d9gWHUkU6OVfDdd5WMTcSyOM9n5g1LF9CFvESnfKYbq9wa3IYMicwB
         h/7UN6fCBiSbw5OaJM0Xm7WL6rXWp5PqzRo9I23KCblf26QKdE2owjXLx5lEuqPh2IMg
         xe0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RERrhhC2uRuGvpOt5XPINB7S1SEYgGjBnuSDZn8dIdo=;
        b=cpfpC0yu0OcQvB2n/9caPXsuhiqz8xsLWO5wwtJ+gQND9P4yFRi79KcePdthAPp2YM
         NUmbHC3hpXYp8nPusd/doOJdl0vfWQJkn9HothLAgIrbb0pYeca51zWH0Abb5K6u5LDv
         oVUaQeQjvZ5SyDOoefKhnG35z2vqollD9Ku7lwLIvV7IpJ4RUzVpshvHEGRuCydHAKE9
         le1OQIxUZXV77nZHRD5zLnv6Dh+z+w96qIoszSbzzo44YiiBoIQi4rHTUe3e29jeNscj
         023Ht2N+gazQJoucofYr26fUVrqmtDNwlJpiJdQeKzowhBY70mKUiQksfGc6Z8GI8Y/y
         Pegg==
X-Gm-Message-State: AOAM531D0H4hentvximpK+rykizTVRRNcmwVxmlA+YyfVNSs4blY+hGE
	7fQMwsquhJqNCJTYNNGiSQrc9M9ACxLI7HGQtj4cfXjJ
X-Google-Smtp-Source: ABdhPJys4buwXH39w/dDTLfIkolhyuklMHUWrb9G7TUbyKdDjw4gi/S6mrPY8yqfg5wfFiFAFKlKysuHXhryK6uABjs=
X-Received: by 2002:a5d:4045:0:b0:20a:cac6:d33d with SMTP id
 w5-20020a5d4045000000b0020acac6d33dmr30405941wrp.657.1651247122775; Fri, 29
 Apr 2022 08:45:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
 <50feb07d-a18b-0a53-91e6-e86c5a032ecc@gmail.com> <CAAxXO2F0oOB-JccRuGkbgMV4PAWCx+6v+OPGXKeD1t0-efnwUA@mail.gmail.com>
 <CAAxXO2GHKCY+eVL34NvC4mrL-5nGbyZc92nFY37cwuknpfz0Cg@mail.gmail.com>
In-Reply-To: <CAAxXO2GHKCY+eVL34NvC4mrL-5nGbyZc92nFY37cwuknpfz0Cg@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Apr 2022 18:45:11 +0300
Message-ID: <CAAxXO2Ep0gb+-o-QyyYrrZCiYmKKr6aehboC4T=NSdcdMhxvOw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: QK65NSIORWP45C4U73FCD4M7QIULOAME
X-Message-ID-Hash: QK65NSIORWP45C4U73FCD4M7QIULOAME
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QK65NSIORWP45C4U73FCD4M7QIULOAME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Actually uhd_usrp_probe looks only at the connection MTU for the warning.
Once you raise that it goes away:)

Nikos

On Fri, Apr 29, 2022 at 4:56 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>
> Besides, with uhd_usrp_probe reporting this issue, it seems that it is
> external to uhd,
> else we will be getting always the same warning:(
>
> Nikos
>
> On Fri, Apr 29, 2022 at 1:47 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
> >
> > Thx,
> >
> > I remember a few years back I changed NIC properties and I got max
> > samples to 1996.
> > No changes in uhd calls. When I upgraded and reinstalled the NIC
> > driver, I lost those settings,
> > and now I am getting max samples 396:(
> > I remember changing things like coalescense, but I don't remember what
> > and by how much.
> > Back then I got the advice from here. So, if anyone remembers...
> > For now I will change my MTU and pass the sizes to the device...
> >
> > BR
> > Nikos
> >
> > On Fri, Apr 29, 2022 at 3:39 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
> > >
> > > On 2022-04-29 03:50, Nikos Balkanas wrote:
> > > > Hi,
> > > >
> > > > uhd_usrp_probe reports that I should raise my send_frame_size &
> > > > recv_frame_size arguments.
> > > > USRP Manual, transport notes, report to change them in device or
> > > > stream arguments.
> > > > Anyone knows how to change these settings in the NIC?
> > > > I have a 10 Gb MLNX NIC and just upgraded my Ubuntu from 14.04 to
> > > > 20.04. I am pretty sure I had some of these optimizations in the NIC
> > > > using ethtool? Anyone remembers what these optimizations were?
> > > >
> > > > TIA
> > > > Nikos
> > > > _______________________________________________
> > > > USRP-users mailing list -- usrp-users@lists.ettus.com
> > > > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > > These are device arguments -- part of UHD:
> > >
> > > https://files.ettus.com/manual/page_transport.html
> > >
> > >
> > > Now, IN ADDITION, to actually support those, your NIC must have its MTU
> > > changed to support the larger frame sizes -- you can just use the
> > > Network device manager
> > >    in the GUI to change this.   Normally, though, a 10GB NIC will have a
> > > larger MTU by default.
> > >
> > > _______________________________________________
> > > USRP-users mailing list -- usrp-users@lists.ettus.com
> > > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
