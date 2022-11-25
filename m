Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE55638D7E
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 16:32:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4943B384480
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 10:32:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669390357; bh=QGJGgjdZFCehJX4WELtDm4Vhor2UPsd1REoUO04wTw8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=I1HvgXlzeh3bVYyyZ34AET4ucABBoVhpFPbIlAqE43MxK1kxDIi1ItoqFe9iUYGcV
	 m2Td5Y44CtkzTRPJeN6Pfow3lLusxzOc7Vog+6fHdBvMmowFanHMkDEjg5nDvmfRzW
	 aNl6gdNvlS2zBF5AqxICPXdyOTlpPycY7t+50LJvN9CffnN09meRRadmGDqGTCX1jd
	 u9QDwEC5RVpd1iQXMZuPV2eNFLTT117dDVCDqPLVM8cZVvkoscCtg5lkYj5qO6GgzB
	 eZMGskOYoWh48/jM4+OVyJj2LPohKVa/lBGXoEbfWan/94uetyQRz4KGA8lFcXI1sr
	 j1X5BR5upmxlw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B06A38446E
	for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 10:31:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hvqA9tp+";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id l2so2695235qtq.11
        for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 07:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN9rqBwhAKLHayXKRMCTamLkzIqdi2+tqeNkNEhzS5Q=;
        b=hvqA9tp+4TRmic+x4QrBCb1BvUCM4c2B6X2iAcOeM0WF4SxFamAgWPu0DLdjpxmN8m
         e46zUxA8vUyAoeBMrzBhfXgdEVCAnJ//m3fLv/4ltPYes+yDQOKCmwu5Ov9Teg7b4Gq+
         0pHYd9+eJ7+qwQJBfNhXMrTM4On5x2vHHZigly8RGuZKLCq1Ntqki6lzBkfltJdRuVKa
         bETEWRf9NWiamO9MVSoC2ZPVES15KAmERddpVircDGoCyjSkyQQuXQTGNhVN6t2xjKPJ
         c7PDk/uHVq0PeR0SzuQWAlZtfnBgoJSCW9KQY6w62L9zQT2kyax6cv2K39QaqnKnHAj0
         LaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mN9rqBwhAKLHayXKRMCTamLkzIqdi2+tqeNkNEhzS5Q=;
        b=XbTMlhiSvloLF+ab0nXdsji6tm3VpsTuavjCs9pTDN5Mq91MWfOUtU9zmcerbfMAMR
         9dLnhFxSJE7ZvQygQo9w7ldLelvuHPm+B7+Y1AcRLi13AE6bLIlIRDVOrPtpUqyQbxnG
         pxYenTrpXMw+xxhFhmT2FJ9t8SzP8TImyRMIJIUjQz4eLO5od0W4e+e8/lh10MTX5rS9
         XANSkKFehW8f74ZOZNX2UMuyJcmMd6C2DGiJdeoYtyU9tlQTB1ZfTdfFndL2cHkou4Nw
         kHL+YvZ5mj9Pdb58aDQDrQMmzZdi3DCXAatcUu2hmcboSseEZPUb/fTOWtTIJL6eyRUX
         sLxQ==
X-Gm-Message-State: ANoB5pkVankSwoJ6Xzt2ou44z46xXxZNgdPnIOVHHkP/hE+bk552GUot
	PSdU6tlbPP+vrNmkj+AuvGWasFiHVXV4IA==
X-Google-Smtp-Source: AA0mqf4q4Dzg9cNcKOPyzzKIxLkS3cC2KCL8blp717qW8eisMolH8IBME64vJhpbqAAs2AfQN6+I1g==
X-Received: by 2002:a05:622a:90c:b0:3a5:4086:a46 with SMTP id bx12-20020a05622a090c00b003a540860a46mr35377350qtb.200.1669390297564;
        Fri, 25 Nov 2022 07:31:37 -0800 (PST)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id j15-20020a05620a288f00b006bc192d277csm2923176qkp.10.2022.11.25.07.31.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 07:31:37 -0800 (PST)
Message-ID: <650d5f9f-17e1-729e-575f-1317dea283c6@gmail.com>
Date: Fri, 25 Nov 2022 10:31:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
 <CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=g@mail.gmail.com>
Message-ID-Hash: SIQFZ7UQ6EQLRFJRWHSIE2OOSY6DJLDT
X-Message-ID-Hash: SIQFZ7UQ6EQLRFJRWHSIE2OOSY6DJLDT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SIQFZ7UQ6EQLRFJRWHSIE2OOSY6DJLDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4894700796940954622=="

This is a multi-part message in MIME format.
--===============4894700796940954622==
Content-Type: multipart/alternative;
 boundary="------------M1ZLX0kvOcIbcMu080dRIOKd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M1ZLX0kvOcIbcMu080dRIOKd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/11/2022 06:20, Dario Pennisi wrote:
> Hi Piotr,
> thank you very much. i'll look=C2=A0into it. unfortunately it worked at=
 125=20
> MHz on UHD 4.0 when most of the stuff was hardcoded... anyway I'll=20
> figure out.
>
> Dario Pennisi
I'll note that UHD support for X410 wasn't *official* until UHD 4.1, so=20
anything that's based on 4.0 is based on code
 =C2=A0 that was nearly-guaranteed to be "fluid".


>
> On Fri, Nov 25, 2022 at 10:51 AM <perper@o2.pl> wrote:
>
>     Hello,
>
>     I recently experimented with adding new master clock definitions
>     for X411 (my port of X410 code to ZCU111).
>
>     Here is a commit that does that:
>
>     https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d1=
90c70114f5011
>
>     But the clocking chips on ZCU111 are different so from you
>     perspective the commit might be cluttered with useless stuff.
>
>     From my experience the key are =E2=80=98master_to_sample_clk=E2=80=98=
 dict from
>     x4xx_rfdc_ctrl.py
>     <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d=
190c70114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc252=
34548a6cfdc>
>     (currently there is no master clock rate of 125MS/s or 100MS/s,
>     there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=E2=80=
=99
>     zcu111_clk_mgr.py
>     <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d=
190c70114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6ae807f09f9=
519903fe276>.
>     Maybe legacy mode (is_legacy_mode) is also relevant in your case.
>     I don=E2=80=99t what it was for exactly - I just removed it from X4=
11
>     specific code as I don=E2=80=99t have any =E2=80=98legacy=E2=80=99 =
stuff that I need to
>     support.
>
>     Then you need to verify if =E2=80=98config=E2=80=98 function in x4x=
x_sample_pll.py
>     (and maybe x4xx_reference_pll.py) contains everything that it
>     should for
>     your needs. After short look it seems that it has what is needed
>     as it has definition of 100MHz VCXO for 3e9 sample clock.
>
>     If this used to work once, and you know when it worked, then you
>     task is simpler - you need to look for changes in the mentioned
>     files and especially
>     in the structures that I pointed to.
>
>     Best Regards,
>     Piotr Krysik
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------M1ZLX0kvOcIbcMu080dRIOKd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/11/2022 06:20, Dario Pennisi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=3Dg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Piotr,
        <div>thank you very much. i'll look=C2=A0into it. unfortunately i=
t
          worked at 125 MHz on UHD 4.0 when most of the stuff was
          hardcoded... anyway I'll figure out.</div>
        <div><br clear=3D"all">
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><span
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">Dario
                  Pennisi</span><br
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I'll note that UHD support for X410 wasn't *official* until UHD 4.1,
    so anything that's based on 4.0 is based on code<br>
    =C2=A0 that was nearly-guaranteed to be "fluid".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=3Dg@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 25, 2022 at 10:=
51
          AM &lt;<a href=3D"mailto:perper@o2.pl" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">perper@o2.pl</a>&gt; wrote:<b=
r>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <p>Hello,</p>
          <p>I recently experimented with adding new master clock
            definitions for X411 (my port of X410 code to ZCU111).</p>
          <p>Here is a commit that does that:</p>
          <p><a
href=3D"https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595=
d190c70114f5011"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://github.com/ptrkrysi=
k/uhd/commit/719257702b788703e24fa8595d190c70114f5011</a></p>
          <p>But the clocking chips on ZCU111 are different so from you
            perspective the commit might be cluttered with useless
            stuff.</p>
          <p>From my experience the key are =E2=80=98master_to_sample_clk=
=E2=80=98 dict
            from <a
href=3D"https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595=
d190c70114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc25=
234548a6cfdc"
title=3D"mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py"
              target=3D"_blank" moz-do-not-send=3D"true">x4xx_rfdc_ctrl.p=
y</a>
            (currently there is no master clock rate of 125MS/s or
            100MS/s,<br>
            there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map fro=
m=E2=80=99 <a
href=3D"https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595=
d190c70114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6ae807f09f=
9519903fe276"
title=3D"mpm/python/usrp_mpm/periph_manager/zcu111_clk_mgr.py"
              target=3D"_blank" moz-do-not-send=3D"true">zcu111_clk_mgr.p=
y</a>.
            Maybe legacy mode (is_legacy_mode) is also relevant in your
            case.<br>
            I don=E2=80=99t what it was for exactly - I just removed it f=
rom
            X411 specific code as I don=E2=80=99t have any =E2=80=98legac=
y=E2=80=99 stuff that I
            need to support.</p>
          <p>Then you need to verify if =E2=80=98config=E2=80=98 function=
 in
            x4xx_sample_pll.py (and maybe x4xx_reference_pll.py)
            contains everything that it should for<br>
            your needs. After short look it seems that it has what is
            needed as it has definition of 100MHz VCXO for 3e9 sample
            clock.</p>
          <p>If this used to work once, and you know when it worked,
            then you task is simpler - you need to look for changes in
            the mentioned files and especially<br>
            in the structures that I pointed to.</p>
          <p>Best Regards,<br>
            Piotr Krysik</p>
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
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------M1ZLX0kvOcIbcMu080dRIOKd--

--===============4894700796940954622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4894700796940954622==--
