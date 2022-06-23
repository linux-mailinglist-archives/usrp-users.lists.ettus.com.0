Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DC95573A1
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 09:13:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A1E33841DB
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 03:13:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655968397; bh=xxdbcnlLNlSa3sKA9JKACTHxj2BpYVOLuJi0qnDIU50=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zA1uqcCIX9da5etBelDwBJ0eTZTCNGg69Ynp5mgyGWvksHZ1GT9OSx0y7KPMBJjis
	 P0H/V5sSVWX88wSLViA5nuduXK/NOe/ImQDO/1Z02r90EjG+j/LXznCluao5RNkMEh
	 vLkbTXIIj779o+Za7NYxamAQ0+VLR9X6DBbJLUVamnej+pGWnGXVqOf6JEUlx1id0d
	 vCi8OUU4fNQdhLx55f9Y22Max0TqhP9SlH1t/VRz4bu7VQDyBI0v/w/rv0/EXXNNqa
	 xBdN3rPJYODMmHbzJXK4B4gy2mZnKoBNd0WO3yHglwPIH0uryelGjozKBpi4nbT8fK
	 kiCKO4ysTcgjA==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 67EFC383C26
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 03:12:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AJc7/5bq";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id z9so10457421wmf.3
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 00:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L+2vmo6949Mo8FAijpx/G7XAVILHQzZCeWlQb8SMva4=;
        b=AJc7/5bqT1ZzolxfDvrqZd0D4dqRVRMgVzp0Mfr7g4IRHGxduQerAoBDh6eAc8X8BY
         pyyPL1EsLAb5HT4I9RUlsF32iORy7V5MpvSnWxXqlSRVKsE7iFIYWDLY6kGmo1K2oCyg
         hP2xUpHgfACBMzBlcn8ODdPikjwaKBcNnQKMc3z2GP/oE8vd695N+0NTuSTluHuToHbR
         X9W5zyNZE8NMWYHK86FEFLRTQ0ltS0KQ5tPlP9AiaSH7fEmDa1rsxEjNXybRZDSQjOUQ
         cGKNPjqp1N7pBFHgtXWrH3n1w3JJh0xnMJEJgxKoOUUFYAJoD3ypQiHwMbLncZ0LR78H
         mRtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L+2vmo6949Mo8FAijpx/G7XAVILHQzZCeWlQb8SMva4=;
        b=r4jmXmM2kbzhRxz4xvuQkBlG9d8OmJo9JPdiY2XLdSUALG7mTmvIdhND48pMOCiUie
         LBRK+AyXTUTi2abWSjPP2gqOQdZlrS4FhurfHBOizoa/JEL0GdVOC59y/mQKws96WEG0
         F+k1R4924trIQbRtbGb9bV5jrDBCdj2+vLQi9Phv/OuamPqhAUmw4SHc1k6y01Da4S7o
         sX5rhqymUzaUSdKAabhYcI9BH6FfsohYGFh7PJOYRm6nlbH62vgA/5e7YcdBglot0PAu
         s0V3H24uRDE21VDHQOhTBc7ctzdS/rhKBjOStDXSDL8/LC4uAc3VUO3A7rT4z7CtpFPO
         BN1Q==
X-Gm-Message-State: AJIora8K9wLWMszpBiZnGofpsgBaHkmt8qwC1h2uGr3u4/6lnlQnhWjd
	JJTg53Gtr38Y+pqLNu0Zz6GLOmlkbNbwmOMu62Q=
X-Google-Smtp-Source: AGRyM1tie53tiyGyiY7ok6tRkIP3uYuHjPN15/2el1RPGuvu65+xyaKzQbwgPhQ/RiFdX+kfrp3bdIFVOsaSwDOIehA=
X-Received: by 2002:a05:600c:681:b0:3a0:2da6:d173 with SMTP id
 a1-20020a05600c068100b003a02da6d173mr2419776wmn.68.1655968343193; Thu, 23 Jun
 2022 00:12:23 -0700 (PDT)
MIME-Version: 1.0
References: <d636bd419e2548878b27baeacbca4b39@gmv.com> <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com> <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com> <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
 <7ac64ef957f2477ea403b0b03739ce8c@gmv.com> <a925d2f2-aa2b-4e2a-318c-248c2c101178@gmail.com>
 <053b1b73b720470b846a73d8f79c5f72@gmv.com> <CAB__hTQGyfjs=1r3cffcfac8=TN-DTRqTUL2WD8KQXXx062FGw@mail.gmail.com>
 <CAA7+tqSZ2KtkP1Kmu=a2Q4Rvk=hbdqJaeAEA_dYz2p1xG0bUVg@mail.gmail.com>
 <CAGNhwTP07=GSHcfkgczAActtxLqjQe66g9c_YAJoiQ+anio5Rg@mail.gmail.com>
 <9595e8fe-e16f-2f57-81f0-bdc6967f9b9a@gmail.com> <CAA7+tqRdwco1ENUZV+W9b3a_vvskcVFuD25CM6XC_J3VNLMeog@mail.gmail.com>
 <5fd92252-5239-c013-0e42-5ff6a74db4e5@gmail.com>
In-Reply-To: <5fd92252-5239-c013-0e42-5ff6a74db4e5@gmail.com>
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Thu, 23 Jun 2022 10:12:11 +0300
Message-ID: <CAA7+tqTDo-VAWf5UcMD08-cJXYWNEtScrw_z=U43sgXL1xNpVg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 4O3WE46TSGNEWZ5XUPSPR2PM4CHGOXBC
X-Message-ID-Hash: 4O3WE46TSGNEWZ5XUPSPR2PM4CHGOXBC
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4O3WE46TSGNEWZ5XUPSPR2PM4CHGOXBC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0151413754179845996=="

--===============0151413754179845996==
Content-Type: multipart/alternative; boundary="000000000000dafccc05e2182ca0"

--000000000000dafccc05e2182ca0
Content-Type: text/plain; charset="UTF-8"

I was comparing applications with and without DPDK. DPDK helps when using
UHD api, but it worsens when I use it with Gnuradio.

On Wed, 22 Jun 2022 at 17:04, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-06-22 09:05, Berkay SAYGILI wrote:
> >
> > Now, I see that DPDK works fine with given UHD examples. But, it
> > failed with Gnuradio. Can we say that Gnuradio is the bottleneck? or
> > am I doing something wrong? Has anyone made the graph in the second
> > test work? By the way, it is much worse when transmitting with
> > Gnuradio at full bandwidth with or without DPDK.
> >
> > To compare Intel and Mellanox NICs, Intel was dropping samples with
> > Gnuradio with very low sample rates, Mellanox started dropping samples
> > after 100 MSPS with both channels used. But, I was using DPDK 18.11,
> > and UHD 4.0 with the Intel NIC, so that might be the case.
> >
> >
> > Best regards
> >
> > Berkay SAYGILI
> >
> You are, to a certain extent comparing apples and oranges.  The
> "benchmark_rate" example never actually *DOES* anything with the samples.
>
> Your Gnu Radio example writes them to a file.   This is MUCH more
> expensive.
>
> In *general* the cost-per-sample for your typical Gnu Radio application
> will be considerably higher than running simple UHD "native" benchmark
> programs.
>
>
>

--000000000000dafccc05e2182ca0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was comparing applications with and without DPDK. DPDK h=
elps when using UHD api, but it worsens when I use it with Gnuradio.<br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, 22 Jun 2022 at 17:04, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On 2022-06-22 09:05, Berkay SAYGILI w=
rote:<br>
&gt;<br>
&gt; Now, I see that DPDK works fine with given UHD examples. But, it <br>
&gt; failed with Gnuradio. Can we say that Gnuradio is the bottleneck? or <=
br>
&gt; am I doing something wrong? Has anyone made the graph in the second <b=
r>
&gt; test work? By the way, it is much worse when transmitting with <br>
&gt; Gnuradio at full bandwidth with or without DPDK.<br>
&gt;<br>
&gt; To compare Intel and Mellanox NICs, Intel was dropping samples with <b=
r>
&gt; Gnuradio with very low sample rates, Mellanox started dropping samples=
 <br>
&gt; after 100 MSPS with both channels used. But, I was using DPDK 18.11, <=
br>
&gt; and UHD 4.0 with the Intel NIC, so that might be the case.<br>
&gt;<br>
&gt;<br>
&gt; Best regards<br>
&gt;<br>
&gt; Berkay SAYGILI<br>
&gt;<br>
You are, to a certain extent comparing apples and oranges.=C2=A0 The <br>
&quot;benchmark_rate&quot; example never actually *DOES* anything with the =
samples.<br>
<br>
Your Gnu Radio example writes them to a file.=C2=A0=C2=A0 This is MUCH more=
 expensive.<br>
<br>
In *general* the cost-per-sample for your typical Gnu Radio application <br=
>
will be considerably higher than running simple UHD &quot;native&quot; benc=
hmark <br>
programs.<br>
<br>
<br>
</blockquote></div>

--000000000000dafccc05e2182ca0--

--===============0151413754179845996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0151413754179845996==--
