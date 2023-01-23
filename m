Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA6678134
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 17:19:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01CB83814BA
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jan 2023 11:19:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674490751; bh=B0nFcJ2nQxpKNManWP6IUnWKN9yg5c1OoqoSEmZPFpo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F/1XdFY+PHnAfkJyuTHCi3cOl/kc4Wvff07vvIZTqcEG4ETW63EP/oAXHGUZU+8mv
	 Zg+b/WXRrGUUumbU+44AMnRycxTfctUTrLcuFK+LMs+AI2loGavA9+VWQ6Fs7KUtWW
	 e+UXKlHUnHCW7oX+pz9hOe9TR7+YpkFuumYV8nbUjAwiQD8yMEP0FCKHdrQ9ndAdaT
	 OzV8ESKEaz3uxpwolDbWABHq0OPJQ/nygNRsbnBZu/Dc2JADYKmzr8CPB5Fk6Inx/O
	 rO4qdIORq7YiT9Dz5ssA0JuCF1Mu/OCvh5nMWsI6IjMFwb5svtvA1NT2xJaE2eiRAH
	 hTFH+yJzhO+Vw==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B58C7380CC7
	for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 11:17:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QaDEfBaA";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-4a263c4ddbaso179695927b3.0
        for <usrp-users@lists.ettus.com>; Mon, 23 Jan 2023 08:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IyHG5x+MZB14KWbAy/GDDYDJyzxAv1cDhpwcgpdle+U=;
        b=QaDEfBaA4i1PaPwukY5cI3l9cOK3U254pQjf3elnvwOTqfgPYH7NiFDc/PtUEN5CIp
         oiVwvu7c7ocBTVtPJwsIvcVL06z3+0CWpb0tgofvopote1Q1SaP/DjJe1VHk33mgOSvM
         M1AqdtaKQUka/vj7OTBlSmKej6RKaUeozAPG7WrqB6hMOHv4gba2PjmU+dDSFEK24eR7
         73LsAX6IQyUuAIaU5nJHTgSgn2UfyYy5C8QTJJyCdycF9Bu+Wse50lh+fIrqR6uO/z4Q
         AUdT+BVBmk5KwaPuSVVpH7FNRLEucGQN9pgGbsXjk9nNtSffrYpWqQIzCIz1K/Xfsc2j
         J+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IyHG5x+MZB14KWbAy/GDDYDJyzxAv1cDhpwcgpdle+U=;
        b=6WGN6DDp6PrbQ5l1+p19zQ9agTgRpX3iGKBvEDFnG6M6IDcwU+hsU/Eerh0BCVQKxX
         +HnE3LjYkhDd9lnPjez04A3Zz/HWM5ytYFxE/9Vc3sk2kbbVomUtchYUX9E261KgHQBg
         ipAoRPmOdYVhhvI+Z2uczLGTKnird3HtUCxkXveegNt10I3E8rFecJfHO9qLzb4yAmRx
         DBPXTRqy4MHc1mLZ1/J25mhe5cwsEB8s0r93yfIC9PrT3ShBhP+wbQLgX4MAV2Woor/h
         QgNhIfAmim6N0rVYWYE3LvcY9ug7w7VR0rxeWAawpBpryQXl+/cNCrg27zCy7FnMTjIJ
         Jy9g==
X-Gm-Message-State: AFqh2kpzzj6gXjR3UiQP4a47KXo6g79uoe8yjw4rhztd4cRFlx5Qaj9q
	8lTvqk8Ghs5WzHLzElf2IADbb/GJYrI=
X-Google-Smtp-Source: AMrXdXsOOH7WXHkXKmSkDSTGupr6WjqoSbyV85RqN/yU986gr1g7Hh2zJPMSybhVGx+KAEODT+ephQ==
X-Received: by 2002:a05:7508:4887:b0:49:c49a:51d6 with SMTP id du7-20020a057508488700b00049c49a51d6mr1413384gbb.2.1674490672685;
        Mon, 23 Jan 2023 08:17:52 -0800 (PST)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id bl8-20020a05620a1a8800b006fa9d101775sm7180795qkb.33.2023.01.23.08.17.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 08:17:52 -0800 (PST)
Message-ID: <1dad107d-4211-ca7d-8e0f-1bd9f212e47b@gmail.com>
Date: Mon, 23 Jan 2023 11:17:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3fJWnCtTQQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3fJWnCtTQQ@mail.gmail.com>
Message-ID-Hash: YWMSPXRIKNLQPU7Q6KAL3ECQ3NC7QM6Z
X-Message-ID-Hash: YWMSPXRIKNLQPU7Q6KAL3ECQ3NC7QM6Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 Autoboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YWMSPXRIKNLQPU7Q6KAL3ECQ3NC7QM6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4006422905525184726=="

This is a multi-part message in MIME format.
--===============4006422905525184726==
Content-Type: multipart/alternative;
 boundary="------------lzd8ch7y0BabPBlM7zF0sB2u"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lzd8ch7y0BabPBlM7zF0sB2u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/01/2023 03:13, Yasir =C3=96z=C3=A7al=C4=B1k wrote:
> Hi everyone,
> I have an E320 which does not autoboot. I am trying to activate it.=20
> When I searched documents for this, I found that there are flags on=20
> the microcontroller that controls autoboot. The document says=20
> "eeprom-set-flags 0x1" activates the autoboot function, however=C2=A0it=
=20
> does not work. I have seen that I might need to update firmware for=20
> this problem, but my boardversion is already 7. Therefore, when I=20
> tried to update mcu firmware, it said it cannot find necessary files=20
> for version 7. As I understand it, my mcu is already updated to the=20
> latest.=C2=A0 Can anyone help me activate the autoboot function?
>
> My Board : USRP E320
> UHD Version: 4.0.0
> MCU Update Files: mcu_neon=20
> <https://files.ettus.com/binaries/misc/upgrade_mcu_neon_v1.1.7358-a1906=
41-musl-glibc-rev3-6.tar.gz>
>
> Kind Regards,
> Yasir
>
If you manually boot it, does it come up OK?



--------------lzd8ch7y0BabPBlM7zF0sB2u
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/01/2023 03:13, Yasir =C3=96z=C3=A7=
al=C4=B1k
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALooG3-i1-T_FRDmuhBFXDeVVrTwO6oKf_x_Z1s=3D3fJWnCtTQQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi everyone,
        <div>I have an E320 which does not autoboot. I am trying to
          activate it. When I searched documents for this, I found that
          there are flags on the microcontroller that controls autoboot.
          The document says "eeprom-set-flags 0x1" activates the
          autoboot function, however=C2=A0it does not work. I have seen t=
hat
          I might need to update firmware for this problem, but my
          boardversion is already 7. Therefore, when I tried to update
          mcu firmware, it said it cannot find necessary files for
          version 7. As I understand it, my mcu is already updated to
          the latest.=C2=A0 Can anyone help me activate the autoboot
          function?</div>
        <div><br>
        </div>
        <div>My Board : USRP E320</div>
        <div>UHD Version: 4.0.0</div>
        <div>MCU Update Files:=C2=A0<a
href=3D"https://files.ettus.com/binaries/misc/upgrade_mcu_neon_v1.1.7358-=
a190641-musl-glibc-rev3-6.tar.gz"
            moz-do-not-send=3D"true">mcu_neon</a></div>
        <div><br>
        </div>
        <div>Kind Regards,</div>
        <div>Yasir</div>
      </div>
      <br>
    </blockquote>
    If you manually boot it, does it come up OK?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------lzd8ch7y0BabPBlM7zF0sB2u--

--===============4006422905525184726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4006422905525184726==--
