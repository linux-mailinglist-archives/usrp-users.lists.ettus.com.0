Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE48950824
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 16:49:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C9D23854D5
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 10:49:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723560548; bh=BPBGrvH+fnc3dZp8sy+TPUcmBkiul5uMMFshObhnTsw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=u4xHrMRu2+fc7zSXitcS97vw1ZbjbIqneELaF58/TPbW1XXvUMSyGp3zdg8srUaRv
	 6Ow3zcVq2a7pWB42SwV6pgZA+GJGzEgkchKrsjacVQKnHPUe3qNYJug7racBLqM6B+
	 3Ldh0nyBNGFUEzlIAck0AMB8lEUKHc5CgZ+2iO2XT/RxrSqmeF80quOy7/N6RDbrTK
	 UlABJReoOqVh9d241AqNBbX+Vux3nq7G9cpgYzaZWgoYYo68f2GJMwqIr3SOYds4FO
	 PtbFFZHPM1mmEaDJfNLO4R5QThgrXjM2d6m9eY5bnE8cWKQXD6TpUNdOj8HWVioUXo
	 CSoSXmMJGqQBA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id A9D57383D8B
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 10:48:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D+RScyPW";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-44fff73f223so27466791cf.2
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 07:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723560532; x=1724165332; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f+p7VecCf9iRSDJd6Fystd62Fjwd9D2TN4EpsjohCY4=;
        b=D+RScyPW58miY+5YbPI/4bCWhPyi81BSLUCr1+QYQIMxy/KXgQwHKrTgy99Yn0qd4D
         X4LdoHZ9xVl2v9PexaTXA+B4bEPU78Bfn7XIebQ2F4zYrSzyAgQMmS24BnTWN+hAvzNk
         nN6J8Lr9B6hDbhasr4ZJn8YazJsOdxaFeMSFIf1z9cFVX0IqKEcF+VnLJHvVG2AsZNZt
         PyobyfBZCI/y32Vm0WlN16edby4HO+0H4ue+2Q+kWl+v8zCXuDvr528lRTmpHMMiScke
         rBWqrP/4PRqo5NOa5nKFnNnXp8TMCBZUgQJ1ii96EjAMeCv9dM957BntZX420ciTEO7o
         PjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723560532; x=1724165332;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f+p7VecCf9iRSDJd6Fystd62Fjwd9D2TN4EpsjohCY4=;
        b=farMTxZEOxMbw+BZejg5QyMuKyEBK5u+R0c1MrwXHhuqE7hibv8SSM9KDYqGJBovMz
         FpDI6qABxWFL99m9D1R0vkiXmAVOC4E38BLIPkvYy42xPm4tfoahJzGCu/GcVesVQGbT
         SdUNcAEDOyr1Ml9At5Hf8BXrya8GPmbBFYMwTNTBoWg8ZQwTKnJqxJjdh1M42/YKZpkX
         SMtaeoEzQ717pcG0gvZn/uQpajDiUyu1ft3A1BMU3AzwPcpu6wSLlxcAwYVnRjQ0avL3
         ejU8OP7KZj93zwzQl0PxhSI+Hhuy1CIbUmUH1etRTlLEY2IQCnxOLJiGHqlbibCJk0nl
         hhUQ==
X-Gm-Message-State: AOJu0Yzri+H5Vo7O3Lwzke4Rr3YGCpHFMLJWEEc8Mca+lLDH8Tiho9wY
	ewOf6RqXl+H+CSOFwPSSB96w3qSLLnIalB5rIRoGXnD/KGcHqC4Ax3XrcA==
X-Google-Smtp-Source: AGHT+IGmC6vPEq8F0KcRCDY6ediCBraXtTXBdYU+G0mB3YPzQVFT2RLSfuGADuL7CjAz5obqIXPxXQ==
X-Received: by 2002:ac8:7ef9:0:b0:453:4c67:5ded with SMTP id d75a77b69052e-4534c675f09mr32239311cf.8.1723560531616;
        Tue, 13 Aug 2024 07:48:51 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4531c1d70c9sm32989761cf.42.2024.08.13.07.48.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 07:48:51 -0700 (PDT)
Message-ID: <46409b81-0e7e-4c71-bb77-536efad5f90a@gmail.com>
Date: Tue, 13 Aug 2024 10:48:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=@protonmail.com>
Message-ID-Hash: RWIG2PELALK4F2EDLLPP53T57CWS6WUB
X-Message-ID-Hash: RWIG2PELALK4F2EDLLPP53T57CWS6WUB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receiving on All Channels with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RWIG2PELALK4F2EDLLPP53T57CWS6WUB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1463317118582299067=="

This is a multi-part message in MIME format.
--===============1463317118582299067==
Content-Type: multipart/alternative;
 boundary="------------1PiXzQ75JXDE04fwI4N42LOS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1PiXzQ75JXDE04fwI4N42LOS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/08/2024 10:36, Olo via USRP-users wrote:
> Dear Ettus Support Team,
>
> I hope this message finds you well.
>
> I am currently working with an X310 SDR equipped with two TwinRX=20
> daughterboards, and I am looking to receive data simultaneously across=20
> all four channels. My goal is to maximize the available bandwidth by=20
> configuring the system to receive on all channels in parallel.
>
> Could you please advise on the best approach to achieve this?=20
> Specifically, I would like to know if it is necessary to use a=20
> specialized RFNoC graph for this setup, or if the uhd::multi_usrp=20
> class in the UHD library, along with a corresponding rx_streamer,=20
> would be sufficient to accomplish this task.
>
> I appreciate any guidance or recommendations you can provide.
>
> Thank you for your support.
>
> Best regards,
> Olo.
>
>
Assuming that all the streams terminate on your computer, then the=20
limiting factor is always going to be your computer.=C2=A0 RFNoC
 =C2=A0 is only helpful if you want to do some of the computing on the=20
radio.=C2=A0 But if the goal is to have 4 streams going to your computer,
 =C2=A0 at full rate, then RFNoC doesn't bring anything to the table--and=
 in=20
fact, internally these days, an application that uses UHD
 =C2=A0 multi-usrp streamers actually sets up a standardized RFNoC flow o=
n=20
the radio anyway.

This document can be helpful:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks

The ultimate question becomes "what do I want to do with those=20
streams?".=C2=A0 That will determine whether your computer
 =C2=A0 can handle the aggregate data rates.



--------------1PiXzQ75JXDE04fwI4N42LOS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/08/2024 10:36, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:XbpcZvaMMXT6CtwRg8IyAm_D2T57dOfmrN5Tjze8-OitQI63xUXP7Iz7dQKf7=
Z15YiSgFNB5CiBc5htCR1LFxrkVuo_pk0mDDm-_3hxSHEw=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Dear
        Ettus Support Team,</span>
      <div><br>
      </div>
      <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
          hope this message finds you well.</span></div>
      <div><br>
      </div>
      <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
          am currently working with an X310 SDR equipped with two TwinRX
          daughterboards, and I am looking to receive data
          simultaneously across all four channels. My goal is to
          maximize the available bandwidth by configuring the system to
          receive on all channels in parallel.</span></div>
      <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;"><br>
        </span></div>
      <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Could
          you please advise on the best approach to achieve this?
          Specifically, I would like to know if it is necessary to use a
          specialized RFNoC graph for this setup, or if the
          uhd::multi_usrp class in the UHD library, along with a
          corresponding rx_streamer, would be sufficient to accomplish
          this task.</span></div>
      <div><span style=3D""><br>
        </span></div>
      <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">I
          appreciate any guidance or recommendations you can provide.</sp=
an></div>
      <div><span style=3D""><br>
        </span></div>
      <div><span
style=3D"font-family: Arial, sans-serif; font-size: 14px; line-height: no=
rmal; font-weight: 400;">Thank
          you for your support.</span></div>
      <div><span style=3D""><br>
        </span></div>
      <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Best
          regards,</span></div>
      <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;">Olo.</span></div>
      <div><span
style=3D"line-height: normal; font-family: Arial, sans-serif; font-size: =
14px; font-weight: 400;"><br>
        </span></div>
      <br>
    </blockquote>
    Assuming that all the streams terminate on your computer, then the
    limiting factor is always going to be your computer.=C2=A0 RFNoC<br>
    =C2=A0 is only helpful if you want to do some of the computing on the
    radio.=C2=A0 But if the goal is to have 4 streams going to your compu=
ter,<br>
    =C2=A0 at full rate, then RFNoC doesn't bring anything to the table--=
and
    in fact, internally these days, an application that uses UHD<br>
    =C2=A0 multi-usrp streamers actually sets up a standardized RFNoC flo=
w on
    the radio anyway.<br>
    <br>
    This document can be helpful:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    The ultimate question becomes "what do I want to do with those
    streams?".=C2=A0 That will determine whether your computer<br>
    =C2=A0 can handle the aggregate data rates.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------1PiXzQ75JXDE04fwI4N42LOS--

--===============1463317118582299067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1463317118582299067==--
