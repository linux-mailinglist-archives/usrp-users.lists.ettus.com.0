Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A37F3593106
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:52:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69D583839F8
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:52:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660575154; bh=IdXBDUeyfWHTsisrY0hbnkcSDXADIhKJCbKT4vVj2W0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IKKqMCZNgg4GZFB3P6vTILPZmscLSeZB09kVg2dObhO2XcznjP8/w4Z1zvnRxdRxp
	 lL/S7drqRLxE+ZlLp6N9e1vTeI1e0omO7VPxPZ44VezbBbHcREyA7Yi7X5Vy5V2DQC
	 63iPLsSgMA6ItOGIXBREylN4uwbDTOIZRDk1P0Nl7kymROdnFqpQcbC8rIeex3vAUe
	 XWGWBRWZBHeUt9wuxBSvIQgt21mosoHFH3NOVwPWodOvhSDPV1rVs+Ym4/YgZVNvy2
	 6jvLoS2Jy6XaFuGf/Wv1CW8goBvNBDHycpCRf30CyfPrLEl1fXbOnGTRglcrSiykVn
	 F09yk0D/GPuGA==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 5CA5038392B
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:51:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pJsNOd0x";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id j6so5647612qkl.10
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=dKjzMf8Z1B5yJgxe9kUajNdwpCB93lmXTZlqk5IexiY=;
        b=pJsNOd0xGVPQUHCMGYMknP0eZ4A4RyNlpq94qnvWiDFy9mxF2wts/KAzD9IFSum8FA
         SThwAvM9EXb9DZtnYP+qE2vmUUj3GqG+s1kh97NM22TJKgIf6Bc3iabiwZcy2it8BYqR
         5XW+P2eiSZqwdfWa1rzAopGhCzfz+8bdxMnOc7MN5+8wk72OQncCUaJUwP3DoEpJftHS
         9Cjd4oIZXhcvbDROvpqrPQ80dw1TCkW9QEEJDw4ATduv5vUH2XlcP5OAOt97dK0iW4yt
         b+uaXLK1QNa/zLGAW+G29+HQSorruD6kmQnqluJX23Xn4rTHSB4LMGfJlT953a+jjvkq
         /Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=dKjzMf8Z1B5yJgxe9kUajNdwpCB93lmXTZlqk5IexiY=;
        b=Zl4kmx+ezeUiWh/cHqEya4J5iUcR36i0Zc5oqrYYFe7/RZir86aX2KXWM6PHGeo0Tt
         h+gilOBwCjPUDsm/+JRdiNaP3/xjdK1cfZARc039xp7jlcUU3EGCB6b8Tp8Zl4srxh5b
         zsHTMHW2Teyf9tUUlskkDN0Sy/aiSfjkr/8gw8hxBbJnQQ/CW+utaE5QWJ8CNfJSn3wn
         tllRM50485IbTNskVBMBp9ukupAV0zoES9ssrTKVM9AsOSsZ3aSIvXU0BkjeapLIEVUT
         IQCLfi2tlwboCRmpo+cGKA5IJLBN1dJMi3EgXTLgw57Mv7cZg5BcUuNeGZQ9YVubSFJj
         0sEg==
X-Gm-Message-State: ACgBeo1j+hHQfnIeSlSJIYd6jIVUYrAglas5AvMKPMG54bo4fBp8Sl7X
	4jjv/u0T7VrgPI5krk1JxRs=
X-Google-Smtp-Source: AA6agR45ZJYmGHAesFMx6bXo7NdXXKsCgAfIH7omYrlW8S1IqPRuVGMFkZZEv5XoRvgTzhyjYA4EVg==
X-Received: by 2002:a05:620a:4553:b0:6bb:1dd0:e44c with SMTP id u19-20020a05620a455300b006bb1dd0e44cmr4389465qkp.543.1660575061733;
        Mon, 15 Aug 2022 07:51:01 -0700 (PDT)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fb6-20020a05622a480600b00342fcdc2d46sm8296641qtb.56.2022.08.15.07.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 07:51:01 -0700 (PDT)
Message-ID: <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com>
Date: Mon, 15 Aug 2022 10:51:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dave NotTelling <dmp250net@gmail.com>
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com>
 <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
Message-ID-Hash: XMNHDFUXCTEAMGZ3G2W4WTXONUCCTUUY
X-Message-ID-Hash: XMNHDFUXCTEAMGZ3G2W4WTXONUCCTUUY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XMNHDFUXCTEAMGZ3G2W4WTXONUCCTUUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0181071242053911500=="

This is a multi-part message in MIME format.
--===============0181071242053911500==
Content-Type: multipart/alternative;
 boundary="------------9FV0Rj70sg06w3BkQ7IaXgZR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9FV0Rj70sg06w3BkQ7IaXgZR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-15 10:47, Dave NotTelling wrote:
> Marcus,
>
> =C2=A0=C2=A0=C2=A0=C2=A0 It was crazy cheap (~$650), and reflashing on =
power up isn't hard=20
> :)=C2=A0 It's a fun toy for learning about RFNoC and just FPGA fun in=20
> general.=C2=A0 Came with two 40 MHz WBX boards. Is there a part number =
for=20
> the flash?=C2=A0 Is it something that can be popped off with a hot air=20
> gun?=C2=A0 I think it did come up on its own once.=C2=A0 Curious if it =
just=20
> needs to be reflowed.
The schematics are here:

https://files.ettus.com/schematics/x300/


>
> =C2=A0=C2=A0=C2=A0=C2=A0 It does seem to have a working EEPROM since I =
can change the IP=20
> address.
>
> =C2=A0=C2=A0=C2=A0=C2=A0 I also noticed that both WBX boards have nasty=
 spur looking tones=20
> for several hundred MHz in the lower range of the WBX.=C2=A0 Is it poss=
ible=20
> that there are issues on the motherboard that could cause those=20
> issues?=C2=A0 I have a proper power supply arriving today to replace th=
e=20
> ATX computer supply I have been testing with (12 Volt)
Could very well be clock issues or other things in the standard=20
daughtercard interface that are unexpectedly noisy.

Do they go away if you terminate the inputs?


>
> Thanks!
>
> -Dave
>
> On Mon, Aug 15, 2022 at 10:41 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-08-15 10:34, Dave NotTelling wrote:
>     > Apologies if this is a repost.=C2=A0 I don't think my original
>     message made
>     > it to the list for some reason.
>     >
>     > I recently got my hands on a used x310.=C2=A0 It seems to work we=
ll, but
>     > for some reason will not boot on its own.=C2=A0 Vivado hardware m=
anager
>     > shows the device as not being programmed, and the network
>     interfaces
>     > don't come up (no lights on the SFPs). If I reflash the device wi=
th
>     > Vivado it will come up and work as expected.=C2=A0 Is there a way=
 to
>     test
>     > the flash chip to see if it's alive?=C2=A0 Running uhd_image_load=
er
>     seems
>     > to work fine, but the device still will not come up automatically=
.
>     >
>     > Thanks!
>     >
>     > -Dave
>     >
>     >
>     This does sound like a FLASH issue.=C2=A0 I hope you didn't pay tha=
t
>     much for
>     it...
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------9FV0Rj70sg06w3BkQ7IaXgZR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-15 10:47, Dave NotTelling
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Marcus,</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It was crazy cheap (~$650), and ref=
lashing on power up
          isn't hard :)=C2=A0 It's a fun toy for learning about RFNoC and
          just FPGA fun in general.=C2=A0 Came with two 40 MHz WBX boards=
.=C2=A0
          Is there a part number for the flash?=C2=A0 Is it something tha=
t
          can be popped off with a hot air gun?=C2=A0 I think it did come=
 up
          on its own once.=C2=A0 Curious if it just needs to be reflowed.=
</div>
      </div>
    </blockquote>
    The schematics are here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/sc=
hematics/x300/">https://files.ettus.com/schematics/x300/</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 It does seem to have a working EEPR=
OM since I can
          change the IP address.</div>
        <div><br>
        </div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 I also noticed that both WBX boards=
 have nasty spur
          looking tones for several hundred MHz in the lower range of
          the WBX.=C2=A0 Is it possible that there are issues on the
          motherboard that could cause those issues?=C2=A0 I have a prope=
r
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
    <blockquote type=3D"cite"
cite=3D"mid:CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmai=
l.com">
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at 10:=
41
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-08-15 10:34, Dave NotTelling wrote:<br>
          &gt; Apologies if this is a repost.=C2=A0 I don't think my orig=
inal
          message made <br>
          &gt; it to the list for some reason.<br>
          &gt;<br>
          &gt; I recently got my hands on a used x310.=C2=A0 It seems to =
work
          well, but <br>
          &gt; for some reason will not boot on its own.=C2=A0 Vivado
          hardware manager <br>
          &gt; shows the device as not being programmed, and the network
          interfaces <br>
          &gt; don't come up (no lights on the SFPs). If I reflash the
          device with <br>
          &gt; Vivado it will come up and work as expected.=C2=A0 Is ther=
e a
          way to test <br>
          &gt; the flash chip to see if it's alive?=C2=A0 Running
          uhd_image_loader seems <br>
          &gt; to work fine, but the device still will not come up
          automatically.<br>
          &gt;<br>
          &gt; Thanks!<br>
          &gt;<br>
          &gt; -Dave<br>
          &gt;<br>
          &gt;<br>
          This does sound like a FLASH issue.=C2=A0 I hope you didn't pay
          that much for <br>
          it...<br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------9FV0Rj70sg06w3BkQ7IaXgZR--

--===============0181071242053911500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0181071242053911500==--
