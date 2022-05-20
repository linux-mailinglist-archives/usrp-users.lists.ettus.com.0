Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 255D652EC95
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 14:49:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A7CC384C68
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 08:49:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653050966; bh=2b9HKExjqNdaohUH9e2nT6sGP79Wu6H1v43VJYGtwH0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vy1zN0u0E6sZRt4BseNZAbixUk8FG6JU5CAT+vvzbREqG/WgnFG2gnH04VwzYKZdu
	 n5UMbDGKdo6npsztQEqq0QiGOBuIobVTyPq9YTsWxXBi1kX71EgR80PoomUKWuSTGc
	 U7U4ntdvRUyE0sgcXt9iMxwuIJVOx3wVn2gSBQvkhNu1w5yvOmB/4o5DPssJcxW418
	 eVCCXz8uZwFeTBbfZe0K/3twjiZ0h5t1w0cRNGuiF9uVXKgYDkxUi01S/yEgSZVEHV
	 gv5k1Uv4FREtk0G9+IK9HbkXQdyLXiFpe9/Qav2AIRl99KNJ6CMRWBNJO9m88xooyX
	 1AgGUdnUImpdA==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 72B683845F5
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 08:48:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hhhK48Sz";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id k8so6580555qvm.9
        for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 05:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=AcsuF1IL7UvEndv0G9qznd+SXhFcHlWHartFZLTAsyo=;
        b=hhhK48Szh8850mzq0yyC/ZlwBdhv6KzosGw9Q7umgak+dog9L8YfRC06UZLqiv1s2S
         yWqwVLA5FsuhUNWKYPZhv3otARG3+6137wK5LpKs5LJjWclfi38Y74qaWtZI76GnEmWl
         5Tr72FUwwutMHOvTIPVZMps8fcwH5+hA0GSPqZnzJ74wNyTr0Rn6ftIQaJw1txOsjJwW
         fc4Qe0rNTLzJmXtA4YdYwYK3C2N9nOYh09tmJ4nkUOo7y816/cWp9rChBNK7STjxYeoM
         Ycf50pnQJliYpnC7DisHu20zC2vVSO95fWNWyDIFvjGMAJa/MQ/n2hZl42bPYkmYQrWD
         78Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=AcsuF1IL7UvEndv0G9qznd+SXhFcHlWHartFZLTAsyo=;
        b=CwEoWvtfrrgcUUx4VRSqV2UpH8RP8zVPKKOyc/zg/blUDEijTbMaAzfuAXXNELla9g
         jdr+w34sqsJBhR9PKnwB5MlSRXpsKApQ/oP4s0nMqNNevUcrEjgg2WgplEW9J392J1WF
         vlBuq8kLvKjiDwbfXyqLaKfLk36hMxs5zJHFjKzBkJSwjqMuQ/Oc8pKVbnxkGmmbFCjO
         dpxGBmP+dS/tHfUTzu5NsNhcqY3sXzPglJrfe1iX+8Y5DMTPwfwzTApoI5CScY/HlGY5
         WnVsERCl2wx5ZNE6ljW2LIOM6lNVWw8CNSqEpyg+bGD41Q6SUuP2uxPwS+G7rBHxy5qv
         kCPw==
X-Gm-Message-State: AOAM53373801TXdBkEh6UtdUltfm+hxTSMc78ffxDupXJDUyjvPfPUIc
	hf8vGeCAwt15irCy7QX5fNyxAcvqGcE=
X-Google-Smtp-Source: ABdhPJxrIeFCM+sJxKnC5QPw1bSrB6owT1TDnRyGdypmzxCT5TSL+vd9y+f//VVAOIVZPpfFkkM1Pg==
X-Received: by 2002:a05:6214:e86:b0:461:d09f:7a03 with SMTP id hf6-20020a0562140e8600b00461d09f7a03mr7538041qvb.91.1653050904843;
        Fri, 20 May 2022 05:48:24 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id i2-20020a37b802000000b006a328ed2cecsm2853032qkf.29.2022.05.20.05.48.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 05:48:24 -0700 (PDT)
Message-ID: <7ce444cc-4d7a-ce82-fe66-8367bfb642a1@gmail.com>
Date: Fri, 20 May 2022 08:48:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
 <MN2PR12MB3312462A2E9190A0F5590D9DB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB33126482C2E5860798E206F7B8C99@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB33128BE0CE1FE723814651A2B8D39@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB33128BE0CE1FE723814651A2B8D39@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: YFQH2XFNMLE623AN3C2V77UUI7MOIXNW
X-Message-ID-Hash: YFQH2XFNMLE623AN3C2V77UUI7MOIXNW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFQH2XFNMLE623AN3C2V77UUI7MOIXNW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2411661496705913623=="

This is a multi-part message in MIME format.
--===============2411661496705913623==
Content-Type: multipart/alternative;
 boundary="------------xxNEoz9x8TKFoh0F0ddvk50D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xxNEoz9x8TKFoh0F0ddvk50D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-20 07:00, Jim Palladino wrote:
> Hello,
>
> I believe I've figured out what is causing the TDC errors. I (or one=20
> of my coworkers) will created an "issue" in the UHD github repo, but I=20
> wanted to post some more info here if someone else runs into this.
>
> I found that I could reproduce the TDC measurement errors at least=20
> somewhat consistently with the following command:
>
> while true; do uhd_usrp_probe=20
> --args=3D"force_reinit=3D1,master_clock_rate=3D200000000"; done
>
> I don't think the master clock rate matters -- that is just what I=20
> selected, but the force_reinit forces the clocks to get setup each=20
> time. That was the important part in reproducing the error. If I let=20
> this run while the UHD 4.1.0.4 or prior filesystem is installed on an=20
> N320, I have not been able to reproduce the TDC error ever. Using the=20
> filesystem from UHD 4.1.0.5-rc1 and later and running the above=20
> command results in ocassional TDC errors. They occur randomly, but if=20
> I leave it running, I'll usually see at least a few per hour. I tended=20
> to leave it running over night and I'd check for errors the next mornin=
g.
>
> It looks like the problem is related to a change made in the LMK04848=20
> configuration in MPM. In UHD=20
> commit=C2=A0d7ee3dcf4a7478a17a094a1be2cba37b98843963, it looks like som=
e=20
> register writes were changed to decrease PLL lock time. It looks like=20
> these registers set the amount of time that the phase detector error=20
> must be within a certain window before Lock Detect is asserted. I'm=20
> guessing that the reduction in time required to declare lock (number=20
> of clock cycles) might be too aggressive. It works most of the time,=20
> but not always.
>
> Making the following edits=20
> to=C2=A0/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/lmk_rh=
.py=20
> seems to fix the issue. Note that this file must be edited on the N320.
>
> Replace:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15B, 0xC7), # PLL1 PFD: ne=
gative slope for active=20
> filter / CP =3D 750 uA
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15C, 0x0F), # PLL1 DLD Cou=
nt [13:8]
>
> With:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15B, 0x27), # PLL1 PFD: ne=
gative slope for active=20
> filter / CP =3D 750 uA
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15C, 0x10), # PLL1 DLD Cou=
nt [13:8]
>
> This just undoes the change made in the commit mentioned above and=20
> requires more time before the LMK04848 to declares lock. Maybe some=20
> value in between would be a better choice, but I'm leaving it this way=20
> for now. I haven't seen any TDC errors so far.
>
> Thanks,
> Jim
>
Thanks very much, Jim.

I've forwarded your comments to the team at Ettus who have been looking=20
at this issue.


--------------xxNEoz9x8TKFoh0F0ddvk50D
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-20 07:00, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33128BE0CE1FE723814651A2B8D39@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I believe I've figured out what is causing the TDC errors. I (or
        one of my coworkers) will created an "issue" in the UHD github
        repo, but I wanted to post some more info here if someone else
        runs into this.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I found that I could reproduce the TDC measurement errors at
        least somewhat consistently with the following command:<br>
        <br>
        while true; do uhd_usrp_probe
        --args=3D"force_reinit=3D1,master_clock_rate=3D200000000"; done<b=
r>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I don't think the master clock rate matters -- that is just what
        I selected, but the force_reinit forces the clocks to get setup
        each time. That was the important part in reproducing the error.
        If I let this run while the UHD 4.1.0.4 or prior filesystem is
        installed on an N320, I have not been able to reproduce the TDC
        error ever. Using the filesystem from UHD 4.1.0.5-rc1 and later
        and running the above command results in ocassional TDC errors.
        They occur randomly, but if I leave it running, I'll usually see
        at least a few per hour. I tended to leave it running over night
        and I'd check for errors the next morning.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        It looks like the problem is related to a change made in the
        LMK04848 configuration in MPM. In UHD
        commit=C2=A0d7ee3dcf4a7478a17a094a1be2cba37b98843963, it looks li=
ke
        some register writes were changed to decrease PLL lock time. It
        looks like these registers set the amount of time that the phase
        detector error must be within a certain window before Lock
        Detect is asserted. I'm guessing that the reduction in time
        required to declare lock (number of clock cycles) might be too
        aggressive. It works most of the time, but not always.=C2=A0</div=
>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Making the following edits
        to=C2=A0/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
lmk_rh.py
        seems to fix the issue. Note that this file must be edited on
        the N320.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Replace:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15B, 0xC7), # PLL1 P=
FD: negative slope for active
        filter / CP =3D 750 uA<br>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15C, 0x0F), # PLL1 D=
LD Count [13:8]<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        With:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15B, 0x27), # PLL1 P=
FD: negative slope for active
        filter / CP =3D 750 uA<br>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (0x15C, 0x10), # PLL1 D=
LD Count [13:8]<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        This just undoes the change made in the commit mentioned above
        and requires more time before the LMK04848 to declares lock.
        Maybe some value in between would be a better choice, but I'm
        leaving it this way for now. I haven't seen any TDC errors so
        far.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <br>
    </blockquote>
    Thanks very much, Jim.<br>
    <br>
    I've forwarded your comments to the team at Ettus who have been
    looking at this issue.<br>
    <br>
    <br>
  </body>
</html>

--------------xxNEoz9x8TKFoh0F0ddvk50D--

--===============2411661496705913623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2411661496705913623==--
