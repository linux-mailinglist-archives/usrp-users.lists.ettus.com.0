Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5127E5398C3
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 23:28:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 687E33841C8
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 17:28:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654032527; bh=58trSYE/SZAbn2kIN+lGwHhgEWNRGl+8t5AfWDRxuKw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gPMygVyxZp61QMjCee/sWhtGtJF1LYbnqRSELQ3BgLPr1gSYSNcFKCVvZ7Q6foSA+
	 0SnG2f3AeCJSlgwa7R5VfwyItn/VzQpINRM/d/f4P5uToSrjvRck+Q6TLN8RQWy5YS
	 MGFQyh7GoYFa6GNddNXkhASp+06LdowyMRD52LfMB6pzFG1kNqZkCP1L3kFHOTctI6
	 WCDAa+JEkEOM/6+VW1g5salHbsAbW8/10yXG2/IF++jXTuoO3DOE2GLH5ffjMkNksA
	 3sPCF7eU/aqP7TBk2u4FmLivAsaBGvtjlYhuDYnVkVZ1cmXiRPw9uBr4XKfB8G0T8s
	 Hck3zOFUMRyyA==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D0984383F49
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 17:27:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="6ctnzoR6";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id t31so13206454ybi.2
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 14:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZkvgXxsRWJr3s4uFN+r7yxVR41ygdGt86ienIa/q+0s=;
        b=6ctnzoR64D/p+VhHjW41nGhUPFwG0EShGrNgyuWacxRc1inzFxAYpHGSBdR4N5EE+R
         ajz8TLf8wM5LU9l760DQpBlYHTgRosPP520/w/Ygxo5C+6yc7KpnEyoNYB12KOqsqi+O
         NExPiheyeeXyAQMFfqOFWtce3S+J8AClBQqe34DiXAOVNy6D1hayTkssLPtYOsmVnusA
         mWumVXY/5O8ErwxRw+2vQEnmR/z9tItSGonl+B67R/67AJ3yP1mVKpCxjs8suWKs/FCq
         zb8hG2H8p408PUdnYvkpRirw6Jgx3loLDToFV+RKrz0JOTvHlB5pI7zTZ8jXiBecoox2
         9ZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZkvgXxsRWJr3s4uFN+r7yxVR41ygdGt86ienIa/q+0s=;
        b=DSm9iprl1awXcz8/XjmwDGGt6kxAVtYEJAJEMGThJOUoqPbrzR5cqz5R6Jvy59WFTG
         4tsV2Z5W7xV4VBQbuZnHGXZul6IJefxmHHmWj5EWmXyjQgFyz8ugYx/l532UyCsf7CZD
         YvQeFkVGaJao88cg3EfqgAVad8JRCdwO0/TeHAiwsBopTOxDjxJZmqEyYqDrfHrERH+f
         IjNoVlGBUFmG32gZE/wljmfR0yILKA4hSDVW7uHXBEFbN9lIFwfufO22Blsq2wjki20G
         jEFrmqh6UMtlMAb+t1knHmW3+73+iqU0fgKkA69YwoYAs3N+YH3qPlJatqRbUmuIHP9q
         L0mA==
X-Gm-Message-State: AOAM5322TMVlYf1oo6QZHPNqbVJLDpF6dZ7cS6Ad7nI0R+Qz2t/rRg42
	ANdrQ/9zALXqrjJXHpPNY0WNPGZq4gUfJ/+6k94Vwk/C
X-Google-Smtp-Source: ABdhPJxSaH0D7Wnnz/K6r1sqR+um0YxjMH0VBNWXcm3WG9lp2rpQeGYm4hzn+4dqJ1o1IuiTAKz7tk6Iov+7srQgoNA=
X-Received: by 2002:a25:2e4d:0:b0:65c:bb23:a4e8 with SMTP id
 b13-20020a252e4d000000b0065cbb23a4e8mr15013790ybn.448.1654032468232; Tue, 31
 May 2022 14:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk@lists.ettus.com>
 <CAEXYVK7WTAJntN=L_zO0bVqaTffVSiMqioU-rezZyRrvXMebtw@mail.gmail.com> <878a883e-8b96-1d1f-fad4-1ee868efb815@gmail.com>
In-Reply-To: <878a883e-8b96-1d1f-fad4-1ee868efb815@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 31 May 2022 16:27:32 -0500
Message-ID: <CAFche=ic6z+Z3sMof2DUqBfJa19aEoUK+Xpq5B8uY5=5_kfPhw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: R3KKSPOGX4JXR3LBZKOAY6X3I2QCWOTG
X-Message-ID-Hash: R3KKSPOGX4JXR3LBZKOAY6X3I2QCWOTG
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R3KKSPOGX4JXR3LBZKOAY6X3I2QCWOTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3749544774878946023=="

--===============3749544774878946023==
Content-Type: multipart/alternative; boundary="000000000000b75e5205e05571e1"

--000000000000b75e5205e05571e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I was also refreshing my memory on how this works. dds_timed is used by the
DUC. For the DDC, I think the line you need is here:

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L115

Also, I think you need to change this line too, which affects both DDC and
DUC:

https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68=
d82e57f/fpga/usrp3/lib/rfnoc/axi_tag_time.v#L48

It looks like a mistake that it's not driven by the same parameter, but I
need to look at it more closely. Maybe @Brian Padalino <bpadalino@gmail.com=
>
can confirm.

Wade

On Tue, May 31, 2022 at 3:48 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-05-31 16:43, Brian Padalino wrote:
>
> On Tue, May 31, 2022 at 3:42 PM <ri28856@mit.edu> wrote:
>
>> Hi,
>>
>> I=E2=80=99m playing around with frequency hopping on a USRP x310 with a =
UBX 160
>> daughterboard. In particular, I want to hop to a few different frequenci=
es
>> that are integer multiples of my master clock rate and well within the
>> daughtercard bandwidth rapidly (hopping every ~200 us). I know the hoppi=
ng
>> schedule well in advance, but as described in the timed command
>> documentation (
>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_U=
HD)
>> the default command queue depth is only 5 slots per IP core. Given that =
the
>> Linux kernel scheduler uses a ~1ms jiffy, it=E2=80=99s rather difficult =
to send new
>> timed command accurately when a queue slot is available. It would be muc=
h
>> easier if I could batch up the tune commands.
>>
>> Is there a way for me to build a default X310 FPGA image but increase th=
e
>> DDC and DUC queue size? I have access to a Vivado license. Is there an
>> example tutorial somewhere? Even better, are the DUC/DDC queue depths
>> parametrized in the build scripts?
>>
>
> I think the 5 here in the CMD_FIFO_SIZE means 2^5 =3D 32 slots:
>
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f=
68d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292
>
> Though I am unsure how many words are written at a time for changing the
> frequency.  It seems like just a single settings register, but maybe
> there's more in the implementation?
>
> Have you tried just writing out the frequencies you want to change and
> seeing if you get automatic holdoff as the command FIFO fills up?
>
> Either way, you should be able to just make that CMD_FIFO_SIZE deeper
> (note: it's the log2, so 8 should be 256 deep).  Let us know how it works
> out?
>
> Brian
>
> The DDC and DUC tuning words would be an increment value for the
> phase-accumulator, I think.  Which is ca 32 bits on GEN2 implementations
> from fuzzy and distant memory.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b75e5205e05571e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I w=
as also refreshing my memory on how this works. dds_timed is used by the DU=
C. For the DDC, I think the line you need is here:</div><div><br></div><div=
><a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec42=
03a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/ddc.v#L115">https://github.com/Ett=
usResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib=
/rfnoc/ddc.v#L115</a><br></div><div><br></div><div>Also, I think you need t=
o change this line too, which affects both DDC and DUC:</div><div><br></div=
><div><a href=3D"https://github.com/EttusResearch/uhd/blob/5333d3d12ffc2122=
9ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/axi_tag_time.v#L48">https://g=
ithub.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/f=
pga/usrp3/lib/rfnoc/axi_tag_time.v#L48</a></div><div><br></div><div>It look=
s like a mistake that it&#39;s not driven by the same parameter, but I need=
 to look at it more closely. Maybe <a class=3D"gmail_plusreply" id=3D"plusR=
eplyChip-0" href=3D"mailto:bpadalino@gmail.com" tabindex=3D"-1">@Brian Pada=
lino</a> can confirm.<br></div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ma=
y 31, 2022 at 3:48 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-05-31 16:43, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Tue, May 31, 2022 at 3:42 PM &lt;<a href=3D"mai=
lto:ri28856@mit.edu" target=3D"_blank">ri28856@mit.edu</a>&gt; wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <p>Hi,</p>
            <p>I=E2=80=99m playing around with frequency hopping on a USRP =
x310
              with a UBX 160 daughterboard. In particular, I want to hop
              to a few different frequencies that are integer multiples
              of my master clock rate and well within the daughtercard
              bandwidth rapidly (hopping every ~200 us). I know the
              hopping schedule well in advance, but as described in the
              timed command documentation (<a href=3D"https://kb.ettus.com/=
Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD" target=3D"_blank">ht=
tps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a=
>)
              the default command queue depth is only 5 slots per IP
              core. Given that the Linux kernel scheduler uses a ~1ms
              jiffy, it=E2=80=99s rather difficult to send new timed comman=
d
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
          <div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/=
blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/dds_time=
d.v#L292" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/5333d=
3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/rfnoc/dds_timed.v#L292</=
a></div>
          <div><br>
          </div>
          <div>Though I am unsure how many words are written at a time
            for changing the frequency.=C2=A0 It seems like just a single
            settings register, but maybe there&#39;s more in the
            implementation?</div>
          <div><br>
          </div>
          <div>Have you tried just writing out the frequencies you want
            to change and seeing if you get automatic holdoff as the
            command FIFO fills up?</div>
          <div><br>
          </div>
          <div>Either way, you should be able to just make that
            CMD_FIFO_SIZE deeper (note: it&#39;s the log2, so 8 should be
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
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b75e5205e05571e1--

--===============3749544774878946023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3749544774878946023==--
