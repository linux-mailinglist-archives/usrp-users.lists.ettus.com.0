Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EAA7EE861
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 21:36:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2316638111B
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 15:36:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700167001; bh=jBaXEkRBQt2/CzSfMPz11rYFHIZ2seyNBMFMIQ/ztdU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AH6J7owQWdAvODyo4juxLiyG9u9JO2yX99DxTssv7l8myQoIQfpxBZw7cMo7Fwhwj
	 TIKro44GRkGqU44RpuAgASVO8p4JdfGO5aMMOifrnsD4O+CkYL8k+SOz2lna9EukNu
	 L/NVQ1qaNb5T5Za9lg4cgM5pBUqCtwwx4Y4a/613DY9RthrLCoEJaWX20lrsAbJ/uX
	 IzVGWkJypp8+rmMq5uyiosSW13/StaxZfndMlJznAEnRpemYMS5mJ3e+eBRATN5HXq
	 XpvOqQAASjbMJbKXOJ7m5/wiqFzDre6sSOspSFSh2a5cz5nioRShNzE6KpbcJAPjIh
	 TA8vPeN7jq6zA==
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 76AB138111B
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 15:36:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ExOxpHtf";
	dkim-atps=neutral
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-7bac330d396so453752241.1
        for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 12:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700166984; x=1700771784; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wCHDE5bds8x/bDuPTfVemhvY8pAXUOYqyt+bUPSCYJ4=;
        b=ExOxpHtfBaLUhAR5u3HMqXflmHEhzPBWsn1tn6vY+acbr2VyqU5AvrJU4UKIUSN26+
         StPmPkRq5ArQypGF5pHrYXXEPCgsz8qvPcZpMmjL2vKE1e/cFhdTPGZYj2v3wagFvF7W
         jfOmc+6jvG8IqBR6dOt0O9nxUfJIMCQS3mL+rYxXoZOoWJ0f7QiEcxycSd7hHD164b4p
         ab7tU9uezqCRfBCvZK0okDbOvX0cmkyAsWJNo3OqWAlhKrCdcOXkqyNdAfUQ/Ci6rQz7
         QRUb4GYUub4OYKPskS4kHnnVGGgFUSviP/WXhHxR3VZUBBBYdnUFvw3H0DJ06zg1zRuL
         bmdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700166984; x=1700771784;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wCHDE5bds8x/bDuPTfVemhvY8pAXUOYqyt+bUPSCYJ4=;
        b=IcXi4FCkIIjcVZXoCgK2E9NZx5RkB82GrlQ3Oia9dE5eK1cjRhhhSweJB2AUvZUtOf
         8zjMj9QmY4Zymg2YAYSc2VxeaSkiKAJPDITx/9tsUaPcpWq+EXHlT4s+OxHjnb4EknBj
         EHjrvoW5Vn7O/wM+AyXYh+krV/sCc4p/AfbpG1osi/0hcVCdUIWgB8ymCcrL99ZvtUMV
         g335g5r6frPMNvP5BwzfdsWogEX9kdLAK1xWqrKBvhYHk/qEsnJCgllNO2yCyPjhZAxh
         ZpTaL62Jld/XxBVkIJ9XOEw+7yOkDjxvz5uWhMMLBc8c5q5H3nT76VhngmxYuU04NzCa
         86Wg==
X-Gm-Message-State: AOJu0Yyw7MjH3gFz1SFhsKxgLyiWro72v8pYjwsyFge+2dUckt3eOC50
	6GJguxz+6SCTDwLNWy+7PI3R6J1kSzs=
X-Google-Smtp-Source: AGHT+IEQK5lSLaPYI5UudXigU1yDR2bWbisk+hED1+NxiHqZClheRadjAeB2xP/YpPJgUjX7IUS26A==
X-Received: by 2002:a67:ef07:0:b0:462:797b:2b62 with SMTP id j7-20020a67ef07000000b00462797b2b62mr1947344vsr.32.1700166983669;
        Thu, 16 Nov 2023 12:36:23 -0800 (PST)
Received: from [192.168.2.170] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id i20-20020ad44bb4000000b0065b11053445sm58390qvw.54.2023.11.16.12.36.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 12:36:23 -0800 (PST)
Message-ID: <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
Date: Thu, 16 Nov 2023 15:36:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: MRTPLWUT2DSP2J5K3CWBT6QBHUYR34AM
X-Message-ID-Hash: MRTPLWUT2DSP2J5K3CWBT6QBHUYR34AM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRTPLWUT2DSP2J5K3CWBT6QBHUYR34AM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6736196238036255035=="

This is a multi-part message in MIME format.
--===============6736196238036255035==
Content-Type: multipart/alternative;
 boundary="------------TVC0CJIyWPC3KsR95wnpNJLt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TVC0CJIyWPC3KsR95wnpNJLt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users wrote:
>
> Hi I am using an x410, and running through the init_gain_block=20
> example,=C2=A0=C2=A0 using the high resolution timer I am getting these=
 results,=20
> which seem really slow, is there a faster way to read/write registers?
>
I believe that on the X410, operations like that actually end up going=20
through the MPM process that is running in the Linux PS
 =C2=A0 slice on the FPGA.

One can expect to pay various "latency tolls".=C2=A0 There's=20
app-land-to-kernel latency on your host, latency of the network stack,
 =C2=A0 latency of the network media itself, and then all of those things=
 in=20
reverse order on the X410 side, since MPM is just a piece
 =C2=A0 of software running as a normal app process in the Linux PS on th=
e X410.

It has never been the case that what amounts to "session parameter"=20
settings were intended to be super-fast, because in general,
 =C2=A0 those things happen at a MUCH MUCH slower pace than the signals=20
themselves.


> Time 481.835 micro seconds.
>
> Gain value read/write loopback successful!
>
> Here is the code.
>
> =C2=A0=C2=A0=C2=A0 t1 =3D high_resolution_clock::now();
>
> gain_block->set_gain_value(new_gain_value);
>
> =C2=A0=C2=A0=C2=A0 const uint32_t gain_value_read =3D gain_block->get_g=
ain_value();
>
> =C2=A0=C2=A0=C2=A0 t2 =3D high_resolution_clock::now();
>
> =C2=A0=C2=A0=C2=A0 delta_time =3D duration_cast<duration<double>>(t2-t1=
);
>
> =C2=A0=C2=A0=C2=A0 std::cout << std::flush ;//<< std::endl;
>
> =C2=A0=C2=A0=C2=A0 std::cout << "Time " << delta_time.count()*1000000.0=
 << " micro=20
> seconds." << std::endl;
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------TVC0CJIyWPC3KsR95wnpNJLt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/11/2023 15:11, Alvin.Begaye---
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi I am using an x410, and running through
          the init_gain_block example,=C2=A0=C2=A0 using the high resolut=
ion timer
          I am getting these results, which seem really slow, is there a
          faster way to read/write registers?<br>
          <br>
        </p>
      </div>
    </blockquote>
    I believe that on the X410, operations like that actually end up
    going through the MPM process that is running in the Linux PS<br>
    =C2=A0 slice on the FPGA.<br>
    <br>
    One can expect to pay various "latency tolls".=C2=A0 There's
    app-land-to-kernel latency on your host, latency of the network
    stack,<br>
    =C2=A0 latency of the network media itself, and then all of those thi=
ngs
    in reverse order on the X410 side, since MPM is just a piece<br>
    =C2=A0 of software running as a normal app process in the Linux PS on=
 the
    X410.<br>
    <br>
    It has never been the case that what amounts to "session parameter"
    settings were intended to be super-fast, because in general,<br>
    =C2=A0 those things happen at a MUCH MUCH slower pace than the signal=
s
    themselves.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">
          <span style=3D"font-family:&quot;Courier New&quot;">Time 481.83=
5
            micro seconds.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">Gain value
            read/write loopback successful!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;"><o:p>=C2=A0</o:=
p></span></p>
        <p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 t1 =3D
            high_resolution_clock::now();<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0
            gain_block-&gt;set_gain_value(new_gain_value);<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 const
            uint32_t gain_value_read =3D gain_block-&gt;get_gain_value();=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 t2 =3D
            high_resolution_clock::now();<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;"><o:p>=C2=A0</o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 delta_time =3D
            duration_cast&lt;duration&lt;double&gt;&gt;(t2-t1);<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 std::cout
            &lt;&lt; std::flush ;//&lt;&lt; std::endl;<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Courier New&quot;">=C2=A0=C2=A0=C2=
=A0 std::cout
            &lt;&lt; "Time " &lt;&lt; delta_time.count()*1000000.0
            &lt;&lt; " micro seconds." &lt;&lt; std::endl;<o:p></o:p></sp=
an></p>
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

--------------TVC0CJIyWPC3KsR95wnpNJLt--

--===============6736196238036255035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6736196238036255035==--
