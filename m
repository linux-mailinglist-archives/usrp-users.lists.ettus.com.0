Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD8159310E
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:54:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F34D383A9D
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:54:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660575283; bh=uY/D0U+rL08ahrbDkMdX5E1vB1dZBWHYzSOEPEVW/C8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oDGWSovPhv/jvVPP+xyP+kAEZt94nWScmS9aJ2g6PajUn7J/CLFcEgFg61YjXAoza
	 AZKBJTTu+pjlLbMF5nz3Jrm/rgM3SHKkPxfjQ8ju7fA4NBlWuqBHDQPPmRTv/d1pka
	 xME311+XIWMhOzG+8HGEEBDIpvjeYKAtXReaENrMR0gganYGRXVGe6vNmqf/C7c/rH
	 +cPRJj0p70hnkYdLaXg8TbZmAUy9eSv8MDx2wTHCNREMFYXy6ehOTU6hqz0wTBUuGf
	 miiVXtUPdUn56zEckIkbVKniSlNF+J8p/sHdpp1hRVrAk51aTxc3JN55K4OSokYa/1
	 PdJbvpaSqr1hg==
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	by mm2.emwd.com (Postfix) with ESMTPS id BA430380E36
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:53:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OwWAhdTh";
	dkim-atps=neutral
Received: by mail-io1-f45.google.com with SMTP id q74so1945258iod.9
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=dRE9PpCEbrpeguvhu2TWO64qLpKB5O0/Rni9S59W7Ek=;
        b=OwWAhdTh5oy559RobZ7eUr2uXIcgyt8gy526Ze1x/HyZzffFHBFKvxgEcYxfHzd4qZ
         n/wILSEKfEaPsEIdQ7a6zx2JOcxmgi/M63gOHpcNNHMrH5y1f5H5kwRAGd92nTJeHRKB
         Xc8ZhD5bi2gVLWjeJ09uom/RZuGCrm6trrNhqWZ4zYJSEFY48S3N0rl9Syx21k0axzAu
         BZd2d8Oquuh8S5zeGh/cOcTeedriItQNLEAX2v8F9hdWEoJXLSjaoLXKcYM3VDUvhhTU
         JlVUMWHTNlANDQOPhlCXFnFnrBczeYVv3d8sQzjsgkT+kspV05B8nFP/5xkqIBT2Blo2
         F3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=dRE9PpCEbrpeguvhu2TWO64qLpKB5O0/Rni9S59W7Ek=;
        b=Y6B/r/fk3qxJcUchONpRWoeedABc5p+C9IMD+hNk14MWqySQx0Q72IFKheWrhILWVC
         QqiwhRgA5WkqCwJaxvBzdZv+5vauGN4mQwUHxIWnbLwPOujrm0Z3uvVEyZEuWpoZsWkk
         3tbYKUqlJCAEUPimxJKaaiVrz0XAGoFpVsY+TSoaR//b6s5yXHhiu+/EVJcbYB8fBx6I
         guQxHFLQfssr3M+5VQOYjYH7kZldDDWj885a+O/sMk3tpi7KEMP8PBXLqhBHLBimg8Mf
         nG3WUSNF3s9IvvsQoahnSbOqEFToQxD9rz8d4s2BeC02QPaxKJWG66foPunoiLzZdQJ+
         ENrw==
X-Gm-Message-State: ACgBeo0cWMu/LVsZGhJOa0zxnZMZMyRxBKfFgMWEznut1yduUL/guq9E
	kOpoPyRNAKBROV0iGXHv6HpZf/nwhPPdY4DbTTuUvmKk
X-Google-Smtp-Source: AA6agR7nyzD/34oQKAfbHFri1P8Gt166ek/m/B/n+iI5m1XfIp9v+4tlCPPDB+4/5uoEGEvlurJE4I1DeYDrLj2CFkg=
X-Received: by 2002:a05:6638:16d1:b0:342:cdcb:7937 with SMTP id
 g17-20020a05663816d100b00342cdcb7937mr7616082jat.94.1660575193001; Mon, 15
 Aug 2022 07:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com> <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
 <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com>
In-Reply-To: <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com>
From: Dave NotTelling <dmp250net@gmail.com>
Date: Mon, 15 Aug 2022 10:53:02 -0400
Message-ID: <CAK6GVuOweUQEhvSwckf4ihNCP1Bd=D+pQwy9ndMtg5m5Lr9GyA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YIJFLVYC6H5PGHP3SG77BE5YAOREHPCQ
X-Message-ID-Hash: YIJFLVYC6H5PGHP3SG77BE5YAOREHPCQ
X-MailFrom: dmp250net@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YIJFLVYC6H5PGHP3SG77BE5YAOREHPCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7016478759864479261=="

--===============7016478759864479261==
Content-Type: multipart/alternative; boundary="0000000000008076e805e648ca7f"

--0000000000008076e805e648ca7f
Content-Type: text/plain; charset="UTF-8"

Marcus,

     Thanks for the link!  I didn't have any terminators on hand over the
weekend, but will try that today.  Appreciate the suggestion!

-Dave

On Mon, Aug 15, 2022 at 10:51 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-08-15 10:47, Dave NotTelling wrote:
>
> Marcus,
>
>      It was crazy cheap (~$650), and reflashing on power up isn't hard :)
> It's a fun toy for learning about RFNoC and just FPGA fun in general.  Came
> with two 40 MHz WBX boards.  Is there a part number for the flash?  Is it
> something that can be popped off with a hot air gun?  I think it did come
> up on its own once.  Curious if it just needs to be reflowed.
>
> The schematics are here:
>
> https://files.ettus.com/schematics/x300/
>
>
>
>      It does seem to have a working EEPROM since I can change the IP
> address.
>
>      I also noticed that both WBX boards have nasty spur looking tones for
> several hundred MHz in the lower range of the WBX.  Is it possible that
> there are issues on the motherboard that could cause those issues?  I have
> a proper power supply arriving today to replace the ATX computer supply I
> have been testing with (12 Volt)
>
> Could very well be clock issues or other things in the standard
> daughtercard interface that are unexpectedly noisy.
>
> Do they go away if you terminate the inputs?
>
>
>
> Thanks!
>
> -Dave
>
> On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-08-15 10:34, Dave NotTelling wrote:
>> > Apologies if this is a repost.  I don't think my original message made
>> > it to the list for some reason.
>> >
>> > I recently got my hands on a used x310.  It seems to work well, but
>> > for some reason will not boot on its own.  Vivado hardware manager
>> > shows the device as not being programmed, and the network interfaces
>> > don't come up (no lights on the SFPs). If I reflash the device with
>> > Vivado it will come up and work as expected.  Is there a way to test
>> > the flash chip to see if it's alive?  Running uhd_image_loader seems
>> > to work fine, but the device still will not come up automatically.
>> >
>> > Thanks!
>> >
>> > -Dave
>> >
>> >
>> This does sound like a FLASH issue.  I hope you didn't pay that much for
>> it...
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--0000000000008076e805e648ca7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0 Thanks for the link!=C2=A0 I didn&#39;t have any terminators on hand=
 over the weekend, but will try that today.=C2=A0 Appreciate the suggestion=
!</div><div><br></div><div>-Dave<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:51 AM =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-08-15 10:47, Dave NotTelling
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It was crazy cheap (~$650), and refla=
shing on power up
          isn&#39;t hard :)=C2=A0 It&#39;s a fun toy for learning about RFN=
oC and
          just FPGA fun in general.=C2=A0 Came with two 40 MHz WBX boards.=
=C2=A0
          Is there a part number for the flash?=C2=A0 Is it something that
          can be popped off with a hot air gun?=C2=A0 I think it did come u=
p
          on its own once.=C2=A0 Curious if it just needs to be reflowed.</=
div>
      </div>
    </blockquote>
    The schematics are here:<br>
    <br>
    <a href=3D"https://files.ettus.com/schematics/x300/" target=3D"_blank">=
https://files.ettus.com/schematics/x300/</a><br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It does seem to have a working EEPROM=
 since I can
          change the IP address.</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 I also noticed that both WBX boards h=
ave nasty spur
          looking tones for several hundred MHz in the lower range of
          the WBX.=C2=A0 Is it possible that there are issues on the
          motherboard that could cause those issues?=C2=A0 I have a proper
          power supply arriving today to replace the ATX computer supply
          I have been testing with (12 Volt)<br>
        </div>
      </div>
    </blockquote>
    Could very well be clock issues or other things in the standard
    daughtercard interface that are unexpectedly noisy.<br>
    <br>
    Do they go away if you terminate the inputs?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks!</div>
        <div><br>
        </div>
        <div>-Dave<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:41
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2022-08-15 10:34, Dave NotTelling wrote:<br>
          &gt; Apologies if this is a repost.=C2=A0 I don&#39;t think my or=
iginal
          message made <br>
          &gt; it to the list for some reason.<br>
          &gt;<br>
          &gt; I recently got my hands on a used x310.=C2=A0 It seems to wo=
rk
          well, but <br>
          &gt; for some reason will not boot on its own.=C2=A0 Vivado
          hardware manager <br>
          &gt; shows the device as not being programmed, and the network
          interfaces <br>
          &gt; don&#39;t come up (no lights on the SFPs). If I reflash the
          device with <br>
          &gt; Vivado it will come up and work as expected.=C2=A0 Is there =
a
          way to test <br>
          &gt; the flash chip to see if it&#39;s alive?=C2=A0 Running
          uhd_image_loader seems <br>
          &gt; to work fine, but the device still will not come up
          automatically.<br>
          &gt;<br>
          &gt; Thanks!<br>
          &gt;<br>
          &gt; -Dave<br>
          &gt;<br>
          &gt;<br>
          This does sound like a FLASH issue.=C2=A0 I hope you didn&#39;t p=
ay
          that much for <br>
          it...<br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000008076e805e648ca7f--

--===============7016478759864479261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7016478759864479261==--
