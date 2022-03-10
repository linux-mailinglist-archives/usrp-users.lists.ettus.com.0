Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7413E4D498D
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 15:43:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BC10385039
	for <lists+usrp-users@lfdr.de>; Thu, 10 Mar 2022 09:43:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W+j8BhQA";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EFD4384193
	for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 09:42:33 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id jx8so4181681qvb.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Mar 2022 06:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=NJOAQTalbUfYL1PGU5ndfAlm55GynfJltdKRHcA+EQo=;
        b=W+j8BhQAcKKkOjq1BjoysmD80T0O31uweDvPjIO2PfvTlhfuU8dKMZXQ+uX3QqGZHh
         gsdNLefajrkWLVbYPFiFRKPEh8iKQNDnwcB9cHYsiD+dPQnBpA+szj+Jx/et5EH32dTQ
         wMOsjJc+fx/4421iYW0ZePwQSZJ/TCf62Xj8swzsEjT45uuwCKjWdAdp0WZMJT0LQsia
         838QPN4S8hvIQzFpn0vocIlwv4kXjiE4mPdnEECia2Aqs9zwTfV+joH0f1i8r+3IOJ+C
         eS8E53OKoWBxXXiDkbtR3qqDP8LALcC5CftKomoZPRqbPz9NyFyOIpFp7Ai+m1Rlrmr+
         gQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=NJOAQTalbUfYL1PGU5ndfAlm55GynfJltdKRHcA+EQo=;
        b=jNNt1Ii1voantYur2Bd5HieCFdPJihUhiP6KU4iCs6HkMkgO7DnXz2SzM78l640Vqk
         LLklZLBaB10OFTZuz5o//szDDGv8G2W+gB/Pql100PNkk6/1GlzIlq8fhZc+JfOemtBM
         weJFXl3qfnOhHXr6uitQpkDQCfw4Qn0EU5pWFNr1BGA0JT9JzeSY1gFf64QDOYlwdPo1
         Jq2RfzkSy1EB5swlGmfKKwnU7DRRaiP8u7WFlv6GiN+jcieNohWXAMd+vCNzsuNIuhVm
         MQDC1ao2N/K1aum6D198HJRZkUb3GBDTSyrlGAvO2kRlcJB1ttf17cOBAAUoKh1zcdYL
         2Cbw==
X-Gm-Message-State: AOAM531m6GwEQE6lrRbyegK4WSxDNwD4S/9/YLh0rEFZeN/EUMZXBZoe
	vsQKHePpBEEZ5Soa5xiG7ZLJwsvXOso=
X-Google-Smtp-Source: ABdhPJxyDAGU1PB/dAnHjAhqQOU0OfGOj8gNhqolmCuRWkwyUPebq82OFBLT/5vZiwhiQKUjGqXQ+Q==
X-Received: by 2002:a05:6214:212f:b0:42f:e1c1:9f00 with SMTP id r15-20020a056214212f00b0042fe1c19f00mr3910721qvc.79.1646923352582;
        Thu, 10 Mar 2022 06:42:32 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a13-20020ac85b8d000000b002e1b2620a4dsm934293qta.95.2022.03.10.06.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 06:42:32 -0800 (PST)
Message-ID: <81f8a42f-3bd8-b7a3-fefd-51938ca7f696@gmail.com>
Date: Thu, 10 Mar 2022 09:42:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
 <AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: U2OVAYWWC3RRAR3FNSAZHMFVAPJZNMVH
X-Message-ID-Hash: U2OVAYWWC3RRAR3FNSAZHMFVAPJZNMVH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U2OVAYWWC3RRAR3FNSAZHMFVAPJZNMVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5351268496673106456=="

This is a multi-part message in MIME format.
--===============5351268496673106456==
Content-Type: multipart/alternative;
 boundary="------------u7BtGgOGaIYjS1IpLUZiHbrj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------u7BtGgOGaIYjS1IpLUZiHbrj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-10 05:24, Tobias Kronauer wrote:
> For inexplicable reasons, it did lock after some time. Maybe the=20
> received GPS signal was too weak (the antenna was placed inside behind=20
> a window) + we waited long enough. However, we decided to use the=20
> OctoClock with another PPS generator as synchronization mechanisms.=20
> Thanks a million for your help.
I'm glad it worked for you!

A couple of points:

 =C2=A0=C2=A0 o A GPSDO will sometimes take quite a long time to achieve =
lock from=20
a cold start (possibly hours)
 =C2=A0=C2=A0 o Some modern low-E windows have a very thin coating of sil=
ver on=20
them, to reduce IR transmission, but it also makes a pretty good
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 attenuator for L-band frequencies


--------------u7BtGgOGaIYjS1IpLUZiHbrj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-10 05:24, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB0107C81BA07940913350EBF09B0B9@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        For inexplicable reasons, it did lock after some time. Maybe the
        received GPS signal was too weak (the antenna was placed inside
        behind a window) + we waited long enough. However, we decided to
        use the OctoClock with another PPS generator as synchronization
        mechanisms. Thanks a million for your help.<br>
      </div>
    </blockquote>
    I'm glad it worked for you!<br>
    <br>
    A couple of points:<br>
    <br>
    =C2=A0=C2=A0 o A GPSDO will sometimes take quite a long time to achie=
ve lock
    from a cold start (possibly hours)<br>
    =C2=A0=C2=A0 o Some modern low-E windows have a very thin coating of =
silver on
    them, to reduce IR transmission, but it also makes a pretty good<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 attenuator for L-band frequencies<br>
    <br>
    <br>
  </body>
</html>

--------------u7BtGgOGaIYjS1IpLUZiHbrj--

--===============5351268496673106456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5351268496673106456==--
