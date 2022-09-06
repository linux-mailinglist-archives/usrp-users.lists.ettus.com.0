Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC5E5AEF59
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 17:49:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B59738308E
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 11:49:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662479388; bh=2ERU+O2sAljc1+HlU4uqHkuzZnUzHfjqGIdvsAI28kU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wMsWEtHFPojPbA/fWmY1Vj9/H6ue2gGfw4dl1BmcBU+HezigvkAPTBgmHg6QoFmg9
	 6jlO1ACo/fo7SRZ8JTuC3BaUvg1CF+016s89e2rh4wfz5dCVaabenKM8G0sV35jIqV
	 TM1Vr2EgfU5SNyCi4jChiyZ03NJbc6KlN+tihZ6UH6Spnd/TpFCd+yPotGXdnRmutb
	 5CCUniwTN/IuiykaFNydCG8VOURsCkpsYKj7u0R8jweJYG5y50ElmftUdpFudfb+Lg
	 ELHCSHPeW9Z3Oki/HutqEuoUknIsSyWK4+2lFS/16I3P4AgW8RnB5bFX1koIgcnAPw
	 jxhCQumWsKhmA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AC72380A1E
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 11:48:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gzjPIw+O";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id e28so8352351qts.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Sep 2022 08:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=ZpUsxoca5gZIt4Lo3kpOXjWpuB+WBDUKKi2W+9Lx6hg=;
        b=gzjPIw+ObAY2pBj/VNQehOI4AuTL51aX8Mi/zljXYS5t267cGoj96UHIObTnke/snD
         eunyVrANqUb6L6B7J48oAkXHE5UyD7oNvvogHw22Xn4vNckjNBz73pwAvDVmhJ/Gl/kv
         EWj5uQ3kPDJUCOVSQbfeSUlMOAFqTF3jb26qVWkLuDDJTulCwr8HvjShRtc/AyXodtGm
         F2ZDylSoZXqO9fygXZJK+MM3cyHskJK+jIb3it1sQkma+nOHH7vFVBdTW0GybO3hWcNH
         Edo4Xaeyb5gEmrarjA285EfOfjrjR5sdS6j2OT7u5hurHhH7rPfeyLUzN3YCsNuCqAM7
         AfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=ZpUsxoca5gZIt4Lo3kpOXjWpuB+WBDUKKi2W+9Lx6hg=;
        b=ExpEJogi2uZfSb9dwRvA/bUQ489FCL3J1u9qVgrlVZ8mNZL8EMva9Zq87YyzbRDzhn
         1Kq3XWyRFii3rIjoz83Dd+amofb22iIPlUov5e6XJsCt/Zt6e6vp+YImaEeMAAbUDR7W
         VNsNFCWbyz1mWA/rGzEUjTEWkY7ub7MnPlwvS5s328xrsKWDMRcUxS+EC5kvWUaWzY5c
         SvfrRHpypFXLOrEibT658gwWp962TDG2C68Fti7/I5Qkvt4M3xRc0DU/Uzx3jBW0Vq9Q
         7wU2Fb5iu8We6tEKDcuPf8khZmsJYWRK5nagD7NVlLziL05+Axv8SjSfXYGnHezo0ur/
         wLqA==
X-Gm-Message-State: ACgBeo0EnbDD7VPqQ1NbJDq/QUhrDylOEQI0rOXrqWgts9VTECAJyX/k
	HHx1BGALsGyO0uKmwHL9BQCFHBZZJDI=
X-Google-Smtp-Source: AA6agR4MyalBi2OxjaulELyfFD31gBqwq5qx5b0q8ir8ga/06XHVknhPc4/0MyQOwg4nKPb1X9dw/Q==
X-Received: by 2002:ac8:7c47:0:b0:343:5878:83e4 with SMTP id o7-20020ac87c47000000b00343587883e4mr44627853qtv.101.1662479279648;
        Tue, 06 Sep 2022 08:47:59 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id cd9-20020a05622a418900b00342fdc4004fsm10000493qtb.52.2022.09.06.08.47.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 08:47:59 -0700 (PDT)
Message-ID: <57aaec8e-dac0-a953-074a-987f671b2afe@gmail.com>
Date: Tue, 6 Sep 2022 11:47:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20@lists.ettus.com>
Message-ID-Hash: 2H3PCCL2ADWO6WWGUVU5JFXIBFIQKFXX
X-Message-ID-Hash: 2H3PCCL2ADWO6WWGUVU5JFXIBFIQKFXX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2H3PCCL2ADWO6WWGUVU5JFXIBFIQKFXX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9206666262218831133=="

This is a multi-part message in MIME format.
--===============9206666262218831133==
Content-Type: multipart/alternative;
 boundary="------------bM1LZ33kJOlNdodenN40mZCo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bM1LZ33kJOlNdodenN40mZCo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-06 11:43, perper@o2.pl wrote:
>
> Marcus D. Leech wrote:
>
>     On 2022-09-06 06:56, perper@o2.pl wrote:
>
>         Hi,
>
>         Fruits aside, that was a valid question. Cause of bad
>         performance when combining DPDK with GNU Radio is a topic that
>         needs to be addressed.
>
>         My hypothesis regarding the cause was:
>
>         DPDK needs few processor cores for itself only. GNU Radio runs
>         a lot of thread (one thread per block +) and it doesn=E2=80=99t=
 care
>         that it tries to run on cores that are busy with DPDK related
>         work. And that causes problems.
>
>     I'll point out that at the end of the day, it's the /OS kernel/
>     that makes thread scheduling decisions--the application can =C2=A0 =
give
>     it hints (sometimes strong ones), but at the end of the day, the
>     kernel assigns work to threads.=C2=A0=C2=A0 An application, per se,=
 =C2=A0
>     doesn't "know" whether a given core is busy--it's not the one
>     assigning work to cores...
>
>         The resulting solution that solved the problem for me:
>
>         For every block of the flow-graph run set_processor_affinity
>         with a list of all processor cores minus DPDK cores, that you
>         set in the /etc/uhd/uhd.conf file.
>
>         Best Regards, Piotr Krysik
>
>         ---------------------------------------------------------------=
---------
>
>         USRP-users mailing list -- usrp-users@lists.ettus.com To
>         unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> I=E2=80=99ve described what solved the issue on my system, what was the=
=20
> assumed cause and what seemed to prove that assumption. I won=E2=80=99t=
=20
> guarantee that my solution will work on any system, but the general=20
> idea that =E2=80=9Cin order to make GNU Radio + UHD with DPDK work bett=
er you=20
> have to isolate cores they are running on=E2=80=9D will probably prevai=
l. The=20
> method of isolation might change.
>
> BTW finally I=E2=80=99ve gone through enough of DPDK=E2=80=99s gotchas =
to make it work=20
> stably again on my systems. So the good news I=E2=80=99ll stop digging =
up=20
> configuration of DPDK publicly on the mailing-list. Even quicker than=20
> I initially thought. Soon I=E2=80=99ll try describe my setup and steps =
I had=20
> to go through that are still in my memory. At least one issue that=20
> I=E2=80=99ve got to resolve wasn=E2=80=99t on the mailing-list and in t=
he howtos.
>
> Best Regards,
> Piotr Krysik
>
>
This is totally valuable work, I don't want to diminish that at all.

But your post might leave some with the impression that Gnu Radio isn't=20
doing enough to "notice" when it's using cores
 =C2=A0 that DPDK needs, and that's the kernel's job...



--------------bM1LZ33kJOlNdodenN40mZCo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-06 11:43, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:perper@o2.pl">perper@o2.pl</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:bh6GGucAyhBtb0RDYzoh2H7BfFNcxEwgdmnFuCY20@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Marcus D. Leech wrote:</p>
      <blockquote>
        <p>On 2022-09-06 06:56, <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:perper@o2.pl">perper@o2.pl</a> wrote:</p>
        <blockquote>
          <p>Hi,</p>
          <p>Fruits aside, that was a valid question. Cause of bad
            performance when
            combining DPDK with GNU Radio is a topic that needs to be
            addressed.</p>
          <p>My hypothesis regarding the cause was:</p>
          <p>DPDK needs few processor cores for itself only. GNU Radio
            runs a lot
            of thread (one thread per block +) and it doesn=E2=80=99t car=
e that
            it tries
            to run on cores that are busy with DPDK related work. And
            that causes
            problems.</p>
        </blockquote>
        <p>I'll point out that at the end of the day, it's the <em>OS
            kernel</em> that
          makes thread scheduling decisions--the application can
          =C2=A0 give it hints (sometimes strong ones), but at the end of=
 the
          day, the
          kernel assigns work to threads.=C2=A0=C2=A0 An application, per=
 se,
          =C2=A0 doesn't "know" whether a given core is busy--it's not th=
e
          one
          assigning work to cores...</p>
        <blockquote>
          <p>The resulting solution that solved the problem for me:</p>
          <p>For every block of the flow-graph run
            set_processor_affinity with a
            list of all processor cores minus DPDK cores, that you set
            in the
            /etc/uhd/uhd.conf file.</p>
          <p>Best Regards,
            Piotr Krysik</p>
          <div class=3D"" contenteditable=3D"false">
            <hr></div>
          <p>USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>
            To unsubscribe send an email to
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></p>
        </blockquote>
      </blockquote>
      <p>I=E2=80=99ve described what solved the issue on my system, what =
was the
        assumed cause and what seemed to prove that assumption. I won=E2=80=
=99t
        guarantee that my solution will work on any system, but the
        general idea that =E2=80=9Cin order to make GNU Radio + UHD with =
DPDK
        work better you have to isolate cores they are running on=E2=80=9D=
 will
        probably prevail. The method of isolation might change.</p>
      <p>BTW finally I=E2=80=99ve gone through enough of DPDK=E2=80=99s g=
otchas to make
        it work stably again on my systems. So the good news I=E2=80=99ll=
 stop
        digging up configuration of DPDK publicly on the mailing-list.
        Even quicker than I initially thought. Soon I=E2=80=99ll try desc=
ribe my
        setup and steps I had to go through that are still in my memory.
        At least one issue that I=E2=80=99ve got to resolve wasn=E2=80=99=
t on the
        mailing-list and in the howtos.</p>
      <p>Best Regards,<br>
        Piotr Krysik</p>
      <br>
    </blockquote>
    This is totally valuable work, I don't want to diminish that at all.<=
br>
    <br>
    But your post might leave some with the impression that Gnu Radio
    isn't doing enough to "notice" when it's using cores<br>
    =C2=A0 that DPDK needs, and that's the kernel's job...<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------bM1LZ33kJOlNdodenN40mZCo--

--===============9206666262218831133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9206666262218831133==--
