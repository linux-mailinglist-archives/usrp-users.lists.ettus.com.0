Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B32E51CFCA
	for <lists+usrp-users@lfdr.de>; Fri,  6 May 2022 05:41:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B69338555B
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 23:41:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651808513; bh=tBs+Rc0xH1jg9E4t3JKZJF9CBeIBhMQJOf73cxGkwdQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=u7vAg7b+TWCN6x03NB0F6uvY/XWv02srRI6Wi5634B3d0Ti2StWJb6CwY8BuPCRyb
	 yJOLHzPEtUZhxd//iTSiMeacGXFEl1qFaLpexwj2BpPWqQD0xwLZMl0sxDLxqCVDFS
	 J8N6IMGZCKTn8QUQankvJBJT/mVPpnvSh0N1JOX7AZ+QFYnIwUcwiB0Oc1lUqP6FCo
	 sG76TFk+GUEDrvD2wtCrulGBZUJd5aOXCvLxpbQIENwkbTRvGNVwfg1IlizNnyl8/x
	 VajCmvAOjbQFI79qkyhCDBHxbzwagZFnNha6qWppwDqqr1oUgzHY6uReFebXZl97XR
	 UfUZ6irOBRInw==
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C12B385519
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 23:40:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SfwqL+wr";
	dkim-atps=neutral
Received: by mail-pj1-f43.google.com with SMTP id r9so5920939pjo.5
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 20:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PjF1HX9/ltlH9HhvJ8j5Yo//M6TSOURwtIpiMLTr8wI=;
        b=SfwqL+wrXuKOQX/65TXteZmH8lrCY31HYMq84vEU2fTKgqlzZJdaOLZnIcXaBkzats
         AmRnYqJdbXsCrN4hQcdZPvzIpYdivLi0mDw2dSH66AtuSXIPTLCCH5e/I/v/MSS1dKUH
         aVoNAiizgK8uBk1aTYXFmk8RJmh58TeV1DOGB4Mc4+CpaVxhfFx3G9HSi8Ed7GRGyPjM
         KUVWzAWeURn9+Tv/2GGpBL1wL+Th1TIPfZrJwX0BiXkG+PdfHcY2qzdMhZFKX/fHr1VG
         KZcgDTCxPHrogKu76yiYRuxQjoEQbp3i3U4NoxcQGcltnUhNWqAv5Amb6phBNu07+jWW
         gw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PjF1HX9/ltlH9HhvJ8j5Yo//M6TSOURwtIpiMLTr8wI=;
        b=njtURRqB4nDJ9kBaNx/6JU/qClSwmNqselZsfqKs6wlePJK+7akHPfdr1qlos0ivA+
         VW85Mu9MJLSvOldWa5lnUy+3LFRrgEOooFNNCkSOWC1gI4ezkPiR+eSswMakAIV+ndJ8
         P79SOL6IvgOi5oDrHfJWEdNScOXdwn4k+GNJzvrYtFkOxljJbV7lzHadqYjpYjJkJsry
         pKt+22h+Wb7AgTo6Wfv61uZsRTtr3tWzV/Um6t7UYJwzbyflEVCwovaAfWHuIzQfgQ+v
         GadHS3RBBq7yaKnNWoBzOXdDYPFu5VNXo4tiJ+leH4dQhEREQOBBoXId9N4fPPe4Bgv+
         Jsgw==
X-Gm-Message-State: AOAM532+9rx6ZLGBQH+uteqz9ng4PBejGbxKwtmaDec/WLhI5lBDv6wv
	x71tzmH1BBGjKzaWa4sHUIHwLq0axQLsAZC1VzE=
X-Google-Smtp-Source: ABdhPJzx5yR6+XKNFXAREgQzdtM81SKIL3YaRn/Z+Cx7feedukUdZFu3SHKJ3qozVuLw/HltisIliEGlJYAQdFXxe4k=
X-Received: by 2002:a17:90a:3486:b0:1d9:3abd:42ed with SMTP id
 p6-20020a17090a348600b001d93abd42edmr10168516pjb.32.1651808455932; Thu, 05
 May 2022 20:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
 <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com> <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
 <CAB__hTTYo=h--G=ymoZu5DvmOzUGOe5YFhi92Q_FyyacTjnpRQ@mail.gmail.com>
 <CAFche=h=tcwHtQffPMeQSMJAgACpfcqz1Z6EtZr-hKdaeytDAg@mail.gmail.com>
 <CAEXYVK6NRA6xXZ3JiM24GnGsjZ3f55peKh+ex7R=87Gics5ATg@mail.gmail.com> <CAFche=hVrGFVQ6Sq_Rv=tQ=6Rpr--pfUT6XShYGsGGTkpddhvA@mail.gmail.com>
In-Reply-To: <CAFche=hVrGFVQ6Sq_Rv=tQ=6Rpr--pfUT6XShYGsGGTkpddhvA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 5 May 2022 23:40:44 -0400
Message-ID: <CAEXYVK5M7HyEJjHPv0NNNDLi5+VOr_aY7zOv3dYa+UVs-dT+3w@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: O3JJ4DRKXP635RW2KEZ4CV6LNKTIOYTJ
X-Message-ID-Hash: O3JJ4DRKXP635RW2KEZ4CV6LNKTIOYTJ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O3JJ4DRKXP635RW2KEZ4CV6LNKTIOYTJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3206342402758582177=="

--===============3206342402758582177==
Content-Type: multipart/alternative; boundary="00000000000040c18605de4fa0ae"

--00000000000040c18605de4fa0ae
Content-Type: text/plain; charset="UTF-8"

Hey Wade,

Ah, so you aren't using the BIST feature of the AD9361 and the dynamic
clock/data adjustments to get a clear eye opening.

You should be able to add that and enhance the E320 to do dual 61.44 Msps.
I believe it even simplifies your timing constraints, too.  Here are the
constraints from ADI for their ADRV9361-Z7035 project:


https://github.com/analogdevicesinc/hdl/blob/619e8043d06d08aaf647203d131fb1f0af021e5b/projects/adrv9361z7035/common/adrv9361z7035_constr_lvds.xdc

Note the pins only have differential termination enabled, set up for LVDS,
and only the RX LVDS clock is called out for having a 4 ns period.  The
rest is handled with the BIST of the AD9361.

Brian

On Thu, May 5, 2022 at 9:01 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Brian,
>
> I don't recall the details of why the design was not able to statically
> close timing at the highest clock rate. The current design is constrained
> for the lower clock rate. Typically, static timing closure becomes
> difficult when you get up around 250 MHz and dynamic phase alignment
> techniques tend to be used instead. So it's certainly possible to create
> LVDS interfaces that run at this rate, but the current design of the FPGA
> interface doesn't.
>
> Wade
>
> On Thu, May 5, 2022 at 12:28 PM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> On Thu, May 5, 2022 at 11:45 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> It's a limitation of the FPGA interface to the RFIC. It doesn't support
>>> the tight setup/hold requirements for operation at the higher clock clock
>>> rate required for 2 x 61.44 Msps.
>>>
>>> Wade
>>>
>>
>> This sounds wrong to me unless you have some very serious bus skew in the
>> layout.  The clock and data delays built into the AD9361 along with the
>> fact the FPGA is a Zynq-7045 should be enough to get some valid setup/hold
>> times.  The LVDS interface is pretty robust and I've seen it work very well
>> on many designs.
>>
>> Can you elaborate more on what the deficiency is with the FPGA interface
>> to the RFIC?
>>
>> Brian
>>
>

--00000000000040c18605de4fa0ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Wade,<div><br></div><div>Ah, so you aren&#39;t using t=
he BIST feature of the AD9361 and the dynamic clock/data adjustments to get=
 a clear eye opening.</div><div><br></div><div>You should be able to add th=
at and enhance the E320 to do dual 61.44 Msps.=C2=A0 I believe it even simp=
lifies your timing constraints, too.=C2=A0 Here are the constraints from AD=
I for their ADRV9361-Z7035 project:</div><div><br></div><div>=C2=A0=C2=A0<a=
 href=3D"https://github.com/analogdevicesinc/hdl/blob/619e8043d06d08aaf6472=
03d131fb1f0af021e5b/projects/adrv9361z7035/common/adrv9361z7035_constr_lvds=
.xdc">https://github.com/analogdevicesinc/hdl/blob/619e8043d06d08aaf647203d=
131fb1f0af021e5b/projects/adrv9361z7035/common/adrv9361z7035_constr_lvds.xd=
c</a></div><div><br></div><div>Note the pins only have differential termina=
tion enabled, set up for LVDS, and only the RX LVDS clock is called out for=
 having a 4 ns period.=C2=A0 The rest is handled with the BIST of the AD936=
1.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 5, 2022 at 9:01 PM Wade =
Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi Brian,</div><div><br></div><div>I don&#39;t recall the det=
ails of why the design was not able to statically close timing at the highe=
st clock rate. The current design is constrained for the lower clock rate. =
Typically, static timing closure becomes difficult when you get up around 2=
50 MHz and dynamic phase alignment techniques tend to be used instead. So i=
t&#39;s certainly possible to create LVDS interfaces that run at this rate,=
 but the current design of the FPGA interface doesn&#39;t.</div><div><br></=
div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, May 5, 2022 at 12:28 PM Brian Padalino &lt;<=
a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 5, 2022 at 11:45 AM Wade Fife=
 &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ett=
us.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>It&#39;s a limitatio=
n of the FPGA interface to the RFIC. It doesn&#39;t support the tight setup=
/hold requirements for operation at the higher clock clock rate required fo=
r 2 x 61.44 Msps.</div><div><br></div><div>Wade</div></div></blockquote><di=
v><br></div><div>This sounds wrong to me unless you have some very serious =
bus skew in the layout.=C2=A0 The clock and data delays built into the AD93=
61 along with the fact the FPGA is a Zynq-7045 should be enough to get some=
 valid setup/hold times.=C2=A0 The LVDS interface is pretty robust and I&#3=
9;ve seen it work very well on many designs.</div><div><br></div><div>Can y=
ou elaborate more on what the deficiency is with the FPGA interface to the =
RFIC?</div><div><br></div><div>Brian</div></div></div>
</blockquote></div>
</blockquote></div>

--00000000000040c18605de4fa0ae--

--===============3206342402758582177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3206342402758582177==--
