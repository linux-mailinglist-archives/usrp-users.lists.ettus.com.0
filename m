Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A80053983B
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 22:48:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56EF0383DBC
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 16:48:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654030097; bh=sugS5He73hvJzQYwpkri61e9KF5gBpmBeV6tkJV60E4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZfOMYjChobG6VhmL/mRrb4LZpCaCkNrm2L07+x1Awbnd6tkvK7mb55/Q35mtJS5hk
	 IQtmzMprhnXQ97ayHIRd1FsANKWzE2Th5GnThSlhIfMynpPaAJ3DDm9zGCZzsCcLup
	 AMZVe0w5EfdRhF+twNH9bLKKhlmd8oKkVpR7E/2TF0qFeBpZKkKBdQWT4ElV3MEB44
	 PdbsU+rxiQJMCizjGPcyU+K+GKZi4oTCbRNSowD5nffwx6wwmU/cLcU1b6Q7GpWPaS
	 bPf/Aqyr1J3Wv70HkqF3KNu4HVh6omBevn9n8/QnvLAHE5Ds4Z0yAY/khFDSgQw4Vw
	 kC1t4YotREegQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id F2B0E383B62
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 16:47:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e+GRefq4";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id c8so3375717qtj.1
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 13:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=AauDc5IRfOMqe4ZtruqKPzVFnJ8bpjXL7m+RnsB81wE=;
        b=e+GRefq4j8b3a2dTkb1ThwXsTd86n6/tzd7K/5vJX8zBUNQIPelvuELzy+q+N1uHm4
         HWfbDgLwgh3rBfpOGJE7YzATRoK3k9Evm5T8oHEfqpw82e5ZtajTo1ld+DOex2MEIYS0
         itGjCniex29SMo8sxNaYYo95o7Wx7+T9d6AhuHc3VvcB9AmGaFzQDBNC8SDZrHD3L2Qt
         WVz1SViC5nZ53OW15YCLvSNMvvfF40rtHYEecJ9KtdXjZVzP3FtghKawE4aNmsuUyH9o
         K8YjaGFE8zGc/YncPEiyd5GPptOFmTNHTU0BykNi0tS6fzyxm7p8NDqv+MT1eZSXQJji
         vh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=AauDc5IRfOMqe4ZtruqKPzVFnJ8bpjXL7m+RnsB81wE=;
        b=pOpG39s2yTB5IYF9yEW+8tvJbYsKExHy4oy44lFm8GSaysK+1Llexng86vOl49mcZR
         iHp6hRPmUDXrgguOqfRvefse8fwHIv0dg+f+UpqJiVMri6X8AkUXibjIvsFwLQ6+y+9V
         F2xc5vqjyrqCX8qcAXYWLzEYzmBWvoojBA0B6H+iobAWunfJ7BfVgj7h3f6RDFYC4AQu
         nKBdmhaphM+2/KQMBLcAaIqK/0m481Qi1a8qgHh9XAVHg3aATtTNs8dK2AcQS6xoSHmA
         Xxt/XDxChvxBeByB1FwrGuX0HA42pZ3d/FhO+rohAkE4uO8X8EjVex02Gxupi3GSHvey
         VOkQ==
X-Gm-Message-State: AOAM5336KJld9NmUPZzR4in/9Xc+YRUENBlbnJ6Gjvaqy5uJJ0O03I0s
	Yi83U7BFrlnLw3giG6DjfLuwBaN0PjU=
X-Google-Smtp-Source: ABdhPJwLuPbtzz4mU+qiDAWkzTfr235MyDOlolQ6xKEfDzxvQBCUR04/+J/u93nnubLfn87zed8TYQ==
X-Received: by 2002:a05:622a:492:b0:2f9:307d:d102 with SMTP id p18-20020a05622a049200b002f9307dd102mr39336144qtx.351.1654030027241;
        Tue, 31 May 2022 13:47:07 -0700 (PDT)
Received: from [192.168.2.195] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c142-20020ae9ed94000000b006a33fc1113csm9749340qkg.23.2022.05.31.13.47.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 13:47:06 -0700 (PDT)
Message-ID: <878a883e-8b96-1d1f-fad4-1ee868efb815@gmail.com>
Date: Tue, 31 May 2022 16:47:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk@lists.ettus.com>
 <CAEXYVK7WTAJntN=L_zO0bVqaTffVSiMqioU-rezZyRrvXMebtw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK7WTAJntN=L_zO0bVqaTffVSiMqioU-rezZyRrvXMebtw@mail.gmail.com>
Message-ID-Hash: CEPX3XXRFV4TB753HA4WCCM65JP5WO4Y
X-Message-ID-Hash: CEPX3XXRFV4TB753HA4WCCM65JP5WO4Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CEPX3XXRFV4TB753HA4WCCM65JP5WO4Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3105466331742872937=="

This is a multi-part message in MIME format.
--===============3105466331742872937==
Content-Type: multipart/alternative;
 boundary="------------cmplPAk8UUR0TWCx60ZX04Tc"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cmplPAk8UUR0TWCx60ZX04Tc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-31 16:43, Brian Padalino wrote:
> On Tue, May 31, 2022 at 3:42 PM <ri28856@mit.edu> wrote:
>
>     Hi,
>
>     I=E2=80=99m playing around with frequency hopping on a USRP x310 wi=
th a
>     UBX 160 daughterboard. In particular, I want to hop to a few
>     different frequencies that are integer multiples of my master
>     clock rate and well within the daughtercard bandwidth rapidly
>     (hopping every ~200 us). I know the hopping schedule well in
>     advance, but as described in the timed command documentation
>     (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Command=
s_in_UHD)
>     the default command queue depth is only 5 slots per IP core. Given
>     that the Linux kernel scheduler uses a ~1ms jiffy, it=E2=80=99s rat=
her
>     difficult to send new timed command accurately when a queue slot
>     is available. It would be much easier if I could batch up the tune
>     commands.
>
>     Is there a way for me to build a default X310 FPGA image but
>     increase the DDC and DUC queue size? I have access to a Vivado
>     license. Is there an example tutorial somewhere? Even better, are
>     the DUC/DDC queue depths parametrized in the build scripts?
>
>
> I think the 5 here in the CMD_FIFO_SIZE means 2^5 =3D 32 slots:
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c=
7f68d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292
>
> Though I am unsure how many words are written at a time for changing=20
> the frequency.=C2=A0 It seems like just a single settings register, but=
=20
> maybe there's more in the implementation?
>
> Have you tried just writing out the frequencies you want to change and=20
> seeing if you get automatic holdoff as the command FIFO fills up?
>
> Either way, you should be able to just make that CMD_FIFO_SIZE deeper=20
> (note: it's the log2, so 8 should be 256 deep).=C2=A0 Let us know how i=
t=20
> works out?
>
> Brian
>
The DDC and DUC tuning words would be an increment value for the=20
phase-accumulator, I think.=C2=A0 Which is ca 32 bits on GEN2 implementat=
ions=20
from fuzzy and distant memory.



--------------cmplPAk8UUR0TWCx60ZX04Tc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-31 16:43, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK7WTAJntN=3DL_zO0bVqaTffVSiMqioU-rezZyRrvXMebtw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Tue, May 31, 2022 at 3:42 PM &lt;<a
            href=3D"mailto:ri28856@mit.edu" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">ri28856@mit.edu</a>&gt; wrote=
:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <p>Hi,</p>
            <p>I=E2=80=99m playing around with frequency hopping on a USR=
P x310
              with a UBX 160 daughterboard. In particular, I want to hop
              to a few different frequencies that are integer multiples
              of my master clock rate and well within the daughtercard
              bandwidth rapidly (hopping every ~200 us). I know the
              hopping schedule well in advance, but as described in the
              timed command documentation (<a
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">https://kb.ettus.com/Sync=
hronizing_USRP_Events_Using_Timed_Commands_in_UHD</a>)
              the default command queue depth is only 5 slots per IP
              core. Given that the Linux kernel scheduler uses a ~1ms
              jiffy, it=E2=80=99s rather difficult to send new timed comm=
and
              accurately when a queue slot is available. It would be
              much easier if I could batch up the tune commands. </p>
            <p>Is there a way for me to build a default X310 FPGA image
              but increase the DDC and DUC queue size? I have access to
              a Vivado license. Is there an example tutorial somewhere?
              Even better, are the DUC/DDC queue depths parametrized in
              the build scripts?</p>
          </blockquote>
          <div><br>
          </div>
          <div>I think the 5 here in the CMD_FIFO_SIZE means 2^5 =3D 32
            slots:</div>
          <div><br>
          </div>
          <div>=C2=A0=C2=A0<a
href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203=
a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292</a></div>
          <div><br>
          </div>
          <div>Though I am unsure how many words are written at a time
            for changing the frequency.=C2=A0 It seems like just a single
            settings register, but maybe there's more in the
            implementation?</div>
          <div><br>
          </div>
          <div>Have you tried just writing out the frequencies you want
            to change and seeing if you get automatic holdoff as the
            command FIFO fills up?</div>
          <div><br>
          </div>
          <div>Either way, you should be able to just make that
            CMD_FIFO_SIZE deeper (note: it's the log2, so 8 should be
            256 deep).=C2=A0 Let us know how it works out?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
    </blockquote>
    The DDC and DUC tuning words would be an increment value for the
    phase-accumulator, I think.=C2=A0 Which is ca 32 bits on GEN2
    implementations from fuzzy and distant memory.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------cmplPAk8UUR0TWCx60ZX04Tc--

--===============3105466331742872937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3105466331742872937==--
