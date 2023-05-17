Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC7707174
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 21:05:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E011384982
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 15:05:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684350339; bh=Q+oxMXlo++Sw/IBedjF1V1Ge2X0WYzclrQBhLIRbgPg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fRU0U9i16Ml7tmClgdrt2YSyV97HBUnT81AKjGC3+PZH+vVVecZu/TLoLtKB+2d2j
	 yOpQt+J5upLDcELYGZs29OhAgU5a4pgTloHbMOEdaA8v67H6SmpaxenXxSKK/c7kzH
	 5c3E+t2E3j6JOeVfz/lh6/lIcnZG+knoO/q8mDe8lRZtNTAT22c0FL1XtVgSgIw8j7
	 Kr2UjKB0hojGlzzpDPD79MzNTPuSPmOKigl8rwZ6TRkFr0eumDpDV3SjcT5U86Al6l
	 eIxT70bWSrBthVwvJvgayJEWMGmajp+EPk+dK9vm3yO5aSJsdn4Vl5YBCuZ8Gvv3ue
	 ZIe4+f/BXBUnA==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id C969E3841EB
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 15:04:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OA3eKWEo";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-561bb2be5f8so12895857b3.0
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 12:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684350273; x=1686942273;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdOaxBBQ72pKT5sEJDwaJVPVVWYJ99oRfe4emrokM8A=;
        b=OA3eKWEopFlYftRsGtTmsXCBa4AIk9JX2EyagFUscMr4JGlDScohYpJjvZ44qYY+yW
         gE1w47PstCJW9d/R5M9ocaiL5NwPR+vcgDafgA0cpRI3C5CkmT6ngsjwbl9E0hYT8m2F
         xvCT8Zsmcg7q2054zfwagmBTdcf2HcLJoqxD4BzXbjIheOs6m+20W45W7KC6Q+lRD74r
         7DNDvXMco9DBdLEHD5gxAOykzzuKb0OFFUdtnE64irsWGqAv5XYUsiXmHZucIarJ8nTM
         dW+0Z9oX8yKTxlfrHn+KAKWSi6/9MUDxEETjis4Au1BwlEnXnQLWf81etLDB4NxpYAxr
         o9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684350273; x=1686942273;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EdOaxBBQ72pKT5sEJDwaJVPVVWYJ99oRfe4emrokM8A=;
        b=VJOROWUBuC/ip0lVTIeY+ez+YPFIhedZIUvVik00AHL0JG6nMC8O5I115xfcQDWFWv
         8soBgRy6gwOnOTp604mkEKMLgHnw+FXPtiZS894X5AcQKRvkv7olqxrVIhqS1SP9Z7BJ
         0FnYoAZpDgGg8MsnZloUcqcaBEdCJvcmQmtjXSmIbTLWnyr2k+NXlzWGNROL7aZFiK+0
         HgvWSHXJqT/CLULK2n+ZJ7tQmg3YCWX95E3PJOpDiiB53woQB7LsO6Kjv9hY2DI/hUM/
         1IP5sHxBlYRkH88HFMlk54of6CNd4NwyFpElxk4wQ/xgVmSPSYixND7lsuQM40pmS4Am
         RaAg==
X-Gm-Message-State: AC+VfDwWKyA0aM2vM8tOscZAQfSOPEBPSpmWAOVV+2ceB+g0kxDNWQVi
	Ph/Jao8kl/o/i280UyBkdJykCH9BjR4=
X-Google-Smtp-Source: ACHHUZ5w/Hu1rawLOzZ7KIBm3RSG8hX9pOqfIjCc7FhMSNWSD59t/KQRu5c29vVya870A/EeQSuPZg==
X-Received: by 2002:a81:c212:0:b0:55d:aff9:975b with SMTP id z18-20020a81c212000000b0055daff9975bmr38800336ywc.12.1684350273124;
        Wed, 17 May 2023 12:04:33 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id j7-20020a37c247000000b007594e37092esm822231qkm.82.2023.05.17.12.04.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:04:32 -0700 (PDT)
Message-ID: <a017cc06-abad-0f0f-88dc-5f26cacda8c0@gmail.com>
Date: Wed, 17 May 2023 15:04:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com>
Message-ID-Hash: HV4RP3MHX4FMPUU3A3TZTAW6TQQ2P72Q
X-Message-ID-Hash: HV4RP3MHX4FMPUU3A3TZTAW6TQQ2P72Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HV4RP3MHX4FMPUU3A3TZTAW6TQQ2P72Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0212691742388934130=="

This is a multi-part message in MIME format.
--===============0212691742388934130==
Content-Type: multipart/alternative;
 boundary="------------A2tY7iGQLZ5icI0eySiZ4Xh4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A2tY7iGQLZ5icI0eySiZ4Xh4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/05/2023 14:49, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> I am still interested to know how your team tests to verify the FPGA=20
> is sending the data=E2=80=A6.meanwhile I did two quick experiments base=
d on=20
> your suggestions.
>
I have no visibility into the details of the R&D teams testing=20
apparatus, but I have been told that this feature was tested
 =C2=A0 in the automated test jig they use.=C2=A0 That's all I know.

I'm a (very) part-time contractor, and not an Ettus/NI R&D employee.=C2=A0=
 So=20
I'm singularly unqualified to talk about the
 =C2=A0 test setup.


> 1) Same setup using the second interface I setup on the network card=20
> for the remote port @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D20=
0e6=20
> --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D5=
4321=20
> --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.
>
> Setup netcat -ul 54321 to listen to this port, and can be verified as=20
> listening (bottom line):
>
>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0
>     127.0.0.53:53 0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0
>     0.0.0.0:631 0.0.0.0:* udp 0 0 0.0.0.0:5353 0.0.0.0:* udp 0 0
>     0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0.0.0:54321 0.0.0.0:* |
>
> Still no traffic to 192.168.30.30 (remote streaming dest), only=20
> control data between USRP (192.168.30.2) and host (192.168.30.1) when=20
> sniffing.
>
> 2) Set the dest-addr to be the host (192.168.30.2), which I would=20
> think would be equivalent to =E2=80=9Cnormal streaming=E2=80=9D. =E2=80=
=9C./remote_rx.py=20
> --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.2=20
> --dest-port=3D54321 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:4=
7=E2=80=9D
>
> Setup netcat -ul 54321 to listen to this port, and can be verified as=20
> listening (bottom line):
>
>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0
>     127.0.0.53:53 0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0
>     0.0.0.0:631 0.0.0.0:* udp 0 0 0.0.0.0:5353 0.0.0.0:* udp 0 0
>     0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0.0.0:54321 0.0.0.0:* |
>
> I don=E2=80=99t see any high speed IQ data going between 192.168.30.1 (=
host)=20
> and 192.168.30.2 (USRP), only the normal control trickle.
>
>
> Thanks,
>
> =E2=80=94Cy
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------A2tY7iGQLZ5icI0eySiZ4Xh4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/05/2023 14:49,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>I am still interested to know how your team tests to verify the
        FPGA is sending the data=E2=80=A6.meanwhile I did two quick exper=
iments
        based on your suggestions.</p>
    </blockquote>
    I have no visibility into the details of the R&amp;D teams testing
    apparatus, but I have been told that this feature was tested<br>
    =C2=A0 in the automated test jig they use.=C2=A0 That's all I know.<b=
r>
    <br>
    I'm a (very) part-time contractor, and not an Ettus/NI R&amp;D
    employee.=C2=A0 So I'm singularly unqualified to talk about the<br>
    =C2=A0 test setup.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.co=
m">
      <p>1) Same setup using the second interface I setup on the network
        card for the remote port @192.168.30.30, =E2=80=9C./remote_rx.py
        --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.=
30.30
        --dest-port=3D54321 --adapter=3Dsfp1
        --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.</p>
      <p>Setup netcat -ul 54321 to listen to this port, and can be
        verified as listening (bottom line):</p>
      <blockquote>
        <pre><code>Proto Recv-Q Send-Q Local Address           Foreign Ad=
dress         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
      </blockquote>
      <p>Still no traffic to 192.168.30.30 (remote streaming dest), only
        control data between USRP (192.168.30.2) and host (192.168.30.1)
        when sniffing.</p>
      <p> </p>
      <p>2) Set the dest-addr to be the host (192.168.30.2), which I
        would think would be equivalent to =E2=80=9Cnormal streaming=E2=80=
=9D.
        =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=3D1223e6 --gain=3D2=
0
        --dest-addr=3D192.168.30.2 --dest-port=3D54321 --adapter=3Dsfp1
        --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D </p>
      <p>Setup netcat -ul 54321 to listen to this port, and can be
        verified as listening (bottom line):</p>
      <blockquote>
        <pre><code>Proto Recv-Q Send-Q Local Address           Foreign Ad=
dress         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
      </blockquote>
      <p>I don=E2=80=99t see any high speed IQ data going between 192.168=
.30.1
        (host) and 192.168.30.2 (USRP), only the normal control trickle.<=
/p>
      <p><br>
      </p>
      <p>Thanks,</p>
      <p>=E2=80=94Cy</p>
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

--------------A2tY7iGQLZ5icI0eySiZ4Xh4--

--===============0212691742388934130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0212691742388934130==--
