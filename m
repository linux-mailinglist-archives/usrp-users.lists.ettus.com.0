Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25346953B48
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 22:07:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3CD3384FEC
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 16:07:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723752458; bh=vHIU0ylvMggycPxWQ6rXSF9ZuY3rghcJNZ1oTCntu4k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RDqIpKR6dXUdEbhxkinzXVDPzWIYjtkDoTuJGBj2GNKB+A/y755Bz63m73t2Y8zDL
	 daRJrTD7Yac47rqEWnWg43cVCf5ZrxrXemLMuqFuttFtNJXfvF9iXXEs0GPyxumDJn
	 TAmDVNfvz2m4QeucxzuAB8re4/MdKoRXfsUfIFr4aJCb3nhcTpz1hd0yNfPYno5HTu
	 IZ1mF9cLR88oTbNJlj+iS9/1GML1P+u4e3pPnVND2V6BlnbMv1Ab/S2YldSNrPeZ6v
	 +Ma6GXs+qQEd/5NrqzSPwi06zsVy2saMQCmFMu8H0XDbOPBPAZVkpAf3yp02BacFrr
	 quIyyKNOvPm8A==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6065C384DD8
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 16:07:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YSCMGU9w";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6b7a3773a95so7266766d6.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 13:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723752439; x=1724357239; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PAFN+2xgbqt5OB7Mxojm47Hy3h7l2Y5DFNnAML7dgRA=;
        b=YSCMGU9wsai+ToJojiJ3NTMI351Z7rPKnvuOhO7cwGoFoyfNBuQ++r+Lg//5M2iEmN
         3FAHs6DTtoOT+ZcNLZaDxgkCSjrsbry2WVXMpfrTTWe1TDc4UdijH06eSs1XmnohT78w
         IyjA6449A5HjOoVK8WpzvEcnJlirFm7AGJBJWAzX8tqVxV3wLettd2NlBCo/vNfHBzEB
         haoQgU+8YunV+w4wJ0ISIXQWNWnds8TCM4L23Hit9tiswFinG9OEwx6InpnJJ66Kidva
         AjuAui/hzQSkKensvfC40Pso7mZJxcrI61hbdQGizl3BzJEREygETbQI/5Y18sBoZYaA
         FIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723752439; x=1724357239;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PAFN+2xgbqt5OB7Mxojm47Hy3h7l2Y5DFNnAML7dgRA=;
        b=MJau35lnQdP93369gezC/iRQQ9Jm0rI/X9BqepiM0SJz5+8IT4N7fAqtDVEBQ3VHbm
         i9BWVjGaC2zvQMNdJxj2wGcTPP6tRzFQkONURoWAIDkIimrwk+2zbc4InGM4zIhpnGSx
         ljf3OykxuETQHy8cvWWNPXgxuD2hjNXdsXIo9FmS6Gt0bm6PVbbER/Tgasjiv/YWtqB+
         aukGhaQJQA7nRHRCCi4kbE9snPAgSVpVszo17437pebuhvcondc1WnwbpFn/CoH6w34Q
         0FQDwPg3q7R1NGZr61BWT5X/peW9x+CdIXs3zd2RD/aTFo97Rk0a6ub2pkz85KQ9H8H4
         JOeg==
X-Gm-Message-State: AOJu0Yxr1qfHLON/qz1RvryVi1zoS9v6poYXZbGTmLGGRmIbWBRE+R+o
	8TSS08IhdvLoCkS3St1MoSbIpnhLrecsxc1xtZXhrL/pPL2B+4xcuPWE/A==
X-Google-Smtp-Source: AGHT+IGutXbsu9Z0cHXC78BoJC0zheFQOcJxyPEG5m3Wn8Tkdp98/2JXZDGInLQWJfXCFWMhNMVIvA==
X-Received: by 2002:a05:6214:3d0a:b0:6bf:7b70:8af4 with SMTP id 6a1803df08f44-6bf7cd9dc70mr9771456d6.13.1723752439191;
        Thu, 15 Aug 2024 13:07:19 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bf6fdde105sm9510476d6.9.2024.08.15.13.07.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 13:07:18 -0700 (PDT)
Message-ID: <a748f96e-a740-43f8-99a3-c2f29c7fd66c@gmail.com>
Date: Thu, 15 Aug 2024 16:07:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANwDeJYL6fQ6Uso9=xOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANwDeJYL6fQ6Uso9=xOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gmail.com>
Message-ID-Hash: RRP6DYLN4UPSQBMYQUSQXNZE3RTRFUQH
X-Message-ID-Hash: RRP6DYLN4UPSQBMYQUSQXNZE3RTRFUQH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with KeepOneInN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRP6DYLN4UPSQBMYQUSQXNZE3RTRFUQH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8495897441231635939=="

This is a multi-part message in MIME format.
--===============8495897441231635939==
Content-Type: multipart/alternative;
 boundary="------------I45Xm9fnQBsI7w00p5sTX7ww"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------I45Xm9fnQBsI7w00p5sTX7ww
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/08/2024 15:52, Ekin Su Sacin wrote:
> Hi all,
>
> I am working with USRP X310. I am trying to adjust the 'N' value for=20
> the KeepOneInN block but am encountering issues at the application=20
> level. I have defined my usrp device using uhd::usrp::multi_usrp, but=20
> I'm running into fatal errors related to <uhd/device3.hpp> and=20
> <uhd/rfnoc/block_control_base.hpp> when attempting to use sr_write. I=20
> am currently using UHD 4.2.0.0. Is=C2=A0using=20
> <uhd/rfnoc/keep_one_in_n_block_control.hpp> the only way to customize=20
> this block ||and is there a way to do that using a usrp device instead=20
> of creating the rfnoc graph object?
>
> Thanks a lot for your support.
>
> Best Regards,
> Ekin
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You can't "mix metaphors".=C2=A0 You need to create an RFNOC graph, NOT u=
se=20
the "multi_usrp" API.

See the examples, like "rfnoc_rx_to_file" in the codebase.


--------------I45Xm9fnQBsI7w00p5sTX7ww
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/08/2024 15:52, Ekin Su Sacin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANwDeJYL6fQ6Uso9=3DxOGhWaMhG+L-VjNn4ZBX21E4Kd2R8Q3PQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi all,</div>
        <div><br>
        </div>
        <div>I am working with USRP X310. I am trying to adjust the 'N'
          value for the KeepOneInN block but am encountering issues at
          the application level. I have defined my usrp device using
          uhd::usrp::multi_usrp, but I'm running into fatal errors
          related to &lt;uhd/device3.hpp&gt; and
          &lt;uhd/rfnoc/block_control_base.hpp&gt; when attempting to
          use sr_write. I am currently using UHD 4.2.0.0. Is=C2=A0using
          &lt;uhd/rfnoc/keep_one_in_n_block_control.hpp&gt; the only way
          to customize this block <code></code>and is there a way to do
          that using a usrp device instead of creating the rfnoc graph
          object?</div>
        <div><br>
        </div>
        <div>
          <div>Thanks a lot for your support.</div>
          <div>
            <div><br>
            </div>
            <div>Best Regards,</div>
            <div>Ekin<br>
            </div>
          </div>
        </div>
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
    You can't "mix metaphors".=C2=A0 You need to create an RFNOC graph, N=
OT
    use the "multi_usrp" API.<br>
    <br>
    See the examples, like "rfnoc_rx_to_file" in the codebase.<br>
    <br>
    <br>
  </body>
</html>

--------------I45Xm9fnQBsI7w00p5sTX7ww--

--===============8495897441231635939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8495897441231635939==--
