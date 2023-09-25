Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F41F7AD8DA
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 15:18:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82DC9384C55
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 09:18:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695647897; bh=GNPSUuQaTJdh8gmeEHYfEcvYE37kzWqs/wRNb4wUlA8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UK494XlaZcxmCTX5Cg7BqNMFW9uan/2/0au9sFMXd1XnpuIvJl4z1AeyjVo+fnuWn
	 DRlSwY6c5ffltWo2Btq2sRI0HqSch5YOWJv7dWMaQ6xGlKBRoTDrBa2WRUEj5SFRn4
	 JFRdZ/hHZMnEcWtEgE1pbFe7Q5eJwjrQobbhGUx4H6uT0YQrWqc9z6GxJdaIEfyIhL
	 NfgBagjgpRcO4booqGEmhPRoewxMcqzUV6Z245RMrBpPEHbKESK4KpeNo53MZ6HpgY
	 JPIhv0XtqxDdC+5SWAd59oNIxZAB1jbbTCxHQT4KFAd3dMxmCTb8aAs8tB/jx3TpBo
	 oIZGRlIdU1i8A==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 9793F384C50
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 09:18:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SgkeL20b";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-77428510fe7so141988185a.1
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 06:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695647884; x=1696252684; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QWaeetl/0zIUDTzjTHZ5Qm6GlGOTtZZ0v4a0jHeaCr8=;
        b=SgkeL20bNOVTi3uDNoYQ0C19yBmRGNZdzDRZDVu4NFquiQRCMqUZbIZP/6efB8U1my
         e/I+DnIFL/qn+hxPBfziOtX+QIYVxaYIb92RNw+RP6DscSzeDRDktF6/04oa/ldFWoGL
         v/Z7Fh4pdMRh48SskOc0zEhC353UYDI3x9FkpFHg2+CdyWapjMRxz+GA9yInbWKeEG5i
         3x+4zgTgKYitUBuhkZgxGdx6t4ZoAwJ/21pYgO6KrEeUqSB3Db4lPmBvnale+Ull5GCg
         tnEj6+er+CuYd8UPKgNZG3itpjYlzFvb0TJ0uAC0O4oqcnY2eK+QfbvCrGsWJ2cDWa30
         Kshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695647884; x=1696252684;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QWaeetl/0zIUDTzjTHZ5Qm6GlGOTtZZ0v4a0jHeaCr8=;
        b=RP3OqDzJaF5HOLNZJbk+NAh/cWUEHj/RQQauDiFfL9a8a1kZUUvd5dmDK3tlThGsFq
         nwbul5AnJEd5KBtGyOQxypx4G1L3IzZMZlVys1Rm0UXt4oUw63DMKSH8+INrPQzeQg7V
         GQsLLpIXGIpX3mkeq2xzDFllIZa4QtROuq+vDGxJ9GlO0xqQPb1lQ3+Y4khPNeHOAkf0
         35RVfNub8OaLHPSxZwHig0lNn56rpE/Fd9Lm4pE42VaLRQJVlzhGurrLvJDUgQ8I4W0Y
         8gZFHLgzEoTnBRiNdcCS6dhDbeM4iVlOQm2RNfavHObgLv0cpfIjIEyhVPZHCSd3u+bv
         NFsA==
X-Gm-Message-State: AOJu0Yz4hMbwelMTb4LdaVrp0pRhLS7QFa5DtDdykzwtdEv/7kBQcPrY
	WaiLqz7Ez1CT6iKxsEtsjcW1TkYLi/78eQ==
X-Google-Smtp-Source: AGHT+IGsNBTAI3kZCsYLQ/pAbPsj7SICcMgmohqplKEckjAhbicIxU3lRdDglGl8xY+l4JqTvdqU6w==
X-Received: by 2002:a05:620a:290b:b0:774:707:48c8 with SMTP id m11-20020a05620a290b00b00774070748c8mr12712904qkp.4.1695647884458;
        Mon, 25 Sep 2023 06:18:04 -0700 (PDT)
Received: from [192.168.2.182] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id s30-20020a0cb31e000000b0065b187d04f0sm428122qve.1.2023.09.25.06.18.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 06:18:03 -0700 (PDT)
Message-ID: <92c8c090-05c4-417e-aabe-9ded2104972e@gmail.com>
Date: Mon, 25 Sep 2023 09:17:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
 <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com>
 <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
 <fce55c5f-843c-9703-a2fa-5e339ad3224c@gmail.com>
 <CAPRRyxvSXLmRQK1g9q4CpTZFD+DG_RD=3PvfOkXYCq6GhxaFWw@mail.gmail.com>
 <LPN77hJUIAM81IQUZp1xm11CW9ICrKnSrtl5iK1r8zW1rfcs-c-YX678AFDaGzJn8oWaplK6HDD8hZ3K2xcZn0778_UciNylvyZEp8zbVRE=@protonmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LPN77hJUIAM81IQUZp1xm11CW9ICrKnSrtl5iK1r8zW1rfcs-c-YX678AFDaGzJn8oWaplK6HDD8hZ3K2xcZn0778_UciNylvyZEp8zbVRE=@protonmail.com>
Message-ID-Hash: N6VNZ7HOX43OM5I3X2NV7KACMRACV7X2
X-Message-ID-Hash: N6VNZ7HOX43OM5I3X2NV7KACMRACV7X2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6VNZ7HOX43OM5I3X2NV7KACMRACV7X2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5254249913885608177=="

This is a multi-part message in MIME format.
--===============5254249913885608177==
Content-Type: multipart/alternative;
 boundary="------------CxdxH1pJ4NXDsMMPYPTaLOIl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CxdxH1pJ4NXDsMMPYPTaLOIl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/09/2023 07:14, Olo via USRP-users wrote:
>
> Please how you achieved no losses on Ubuntu ? I have significantly=20
> lower losses in Ubuntu too but I still have some.
>
> On ubuntu :
> Benchmark rate summary:
> =C2=A0 Num received samples: =C2=A0 =C2=A0 131160032
> =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A069746238
> =C2=A0 Num overruns detected: =C2=A0 =C2=A0207
> =C2=A0 Num transmitted samples: =C2=A00
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected: =C2=A0 0
> =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
>
> On windows:
> Benchmark rate summary:
> =C2=A0 Num received samples: =C2=A0 =C2=A0 95146338
> =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A0104878018
> =C2=A0 Num overruns detected: =C2=A0 =C2=A0526
> =C2=A0 Num transmitted samples: =C2=A00
> =C2=A0 Num sequence errors (Tx): 0
> =C2=A0 Num sequence errors (Rx): 0
> =C2=A0 Num underruns detected: =C2=A0 0
> =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
> =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00
>
>
> Both on 20 MHz bandwidth.
>
>
If you're using the "num_recv_frames=3D256", then my guess is that you're=
=20
running your CPU in "economy" mode.=C2=A0 On Ubuntu
 =C2=A0 use the CPU Frequency Monitor app (or whatever your desktop=20
preference calls it) to turn it to "performance" mode.
 =C2=A0 Don't know how to do that on Windows.

See:

https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks



> Sent with Proton Mail <https://proton.me/> secure email.
>
> ------- Original Message -------
> On Monday, September 25th, 2023 at 11:20, Ivan Zahartchuk=20
> <adray0001@gmail.com> wrote:
>
>> Unfortunately, this has no effect on losses.
>>
>> =D0=BF=D0=BD, 25 =D0=B2=D0=B5=D1=80. 2023=E2=80=AF=D1=80. =D0=BE 09:56=
 Marcus D. Leech <patchvonbraun@gmail.com>=20
>> =D0=BF=D0=B8=D1=88=D0=B5:
>>
>>     On 25/09/2023 01:28, Olo via USRP-users wrote:
>>     > I have same problem. Please have anyone clue what should I do ?
>>     My output from benchmark_rate --rx_rate 20MHz:
>>     >
>>     > Benchmark rate summary:
>>     > Num received samples: 99900744
>>     > Num dropped samples: 100315437
>>     > Num overruns detected: 472
>>     >
>>     > Im using Windows 10 /w UHD 4.4 on B210.
>>     >
>>     >
>>     You could use the "num_recv_frames" device argument:
>>
>>     num_recv_frames=3D256
>>
>>     See if that makes a difference.
>>
>>
>>     >
>>     >
>>     >
>>     >
>>     > Sent with Proton Mail secure email.
>>     >
>>     > ------- Original Message -------
>>     > On Saturday, September 23rd, 2023 at 23:40, Marcus M=C3=BCller
>>     <marcus.mueller@ettus.com> wrote:
>>     >
>>     >
>>     >> Sounds like the USB host controller's Windows driver and/or
>>     controller firmware coming
>>     >> with that driver leave things to be desired. I honestly don't
>>     have a good recommendation
>>     >> there, other than to make sure your Windows drivers are up to
>>     date =E2=80=93 Windows is not per se
>>     >> worse than Linux at USB.
>>     >>
>>     >> Best,
>>     >>
>>     >> Marcus
>>     >>
>>     >> On 23.09.23 23:28, Ivan Zahartchuk wrote:
>>     >>
>>     >>> Hello. I have an issue with reading data from the USRP B200
>>     on Windows 10. When I run
>>     >>> the benchmark_rate with a 20 MHz reception bandwidth, I see
>>     losses of more than 50
>>     >>> percent. However, there are no losses during transmission. I
>>     have followed all the
>>     >>> instructions, including modifying the registry and disabling
>>     power management for USB.
>>     >>> The same issue occurs even when using an external power
>>     supply. Can you please advise on
>>     >>> what the possible problems might be? On the same PC, when
>>     using Ubuntu, I can receive 50
>>     >>> MHz with almost no losses.
>>     >>>
>>     >>> _______________________________________________
>>     >>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>     >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>     >> _______________________________________________
>>     >> USRP-users mailing list -- usrp-users@lists.ettus.com
>>     >> To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>>     > _______________________________________________
>>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>     _______________________________________________
>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------CxdxH1pJ4NXDsMMPYPTaLOIl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/09/2023 07:14, Olo via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LPN77hJUIAM81IQUZp1xm11CW9ICrKnSrtl5iK1r8zW1rfcs-c-YX678AFDaG=
zJn8oWaplK6HDD8hZ3K2xcZn0778_UciNylvyZEp8zbVRE=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Ple=
ase
        how you achieved no losses on Ubuntu ? I have significantly
        lower losses in Ubuntu too but I still have some.=C2=A0</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">On
        ubuntu :</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><sp=
an>Benchmark
          rate summary:</span>
        <div><span>=C2=A0 Num received samples: =C2=A0 =C2=A0 131160032</=
span></div>
        <div><span>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A0697462=
38</span></div>
        <div><span>=C2=A0 Num overruns detected: =C2=A0 =C2=A0207</span><=
/div>
        <div><span>=C2=A0 Num transmitted samples: =C2=A00</span></div>
        <div><span>=C2=A0 Num sequence errors (Tx): 0</span></div>
        <div><span>=C2=A0 Num sequence errors (Rx): 0</span></div>
        <div><span>=C2=A0 Num underruns detected: =C2=A0 0</span></div>
        <div><span>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00=
</span></div>
        <div><span>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00=
</span></div>
        <div><span>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00=
</span></div>
        <span></span><br>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">On
        windows:=C2=A0</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><sp=
an>Benchmark
          rate summary:</span>
        <div><span>=C2=A0 Num received samples: =C2=A0 =C2=A0 95146338</s=
pan></div>
        <div><span>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A0104878=
018</span></div>
        <div><span>=C2=A0 Num overruns detected: =C2=A0 =C2=A0526</span><=
/div>
        <div><span>=C2=A0 Num transmitted samples: =C2=A00</span></div>
        <div><span>=C2=A0 Num sequence errors (Tx): 0</span></div>
        <div><span>=C2=A0 Num sequence errors (Rx): 0</span></div>
        <div><span>=C2=A0 Num underruns detected: =C2=A0 0</span></div>
        <div><span>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00=
</span></div>
        <div><span>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00=
</span></div>
        <span>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00</spa=
n><br>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Bot=
h
        on 20 MHz bandwidth.</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
    </blockquote>
    If you're using the "num_recv_frames=3D256", then my guess is that
    you're running your CPU in "economy" mode.=C2=A0 On Ubuntu<br>
    =C2=A0 use the CPU Frequency Monitor app (or whatever your desktop
    preference calls it) to turn it to "performance" mode.<br>
    =C2=A0 Don't know how to do that on Windows.<br>
    <br>
    See:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_P=
erformance_Tuning_Tips_and_Tricks</a><br>
    <br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:LPN77hJUIAM81IQUZp1xm11CW9ICrKnSrtl5iK1r8zW1rfcs-c-YX678AFDaG=
zJn8oWaplK6HDD8hZ3K2xcZn0778_UciNylvyZEp8zbVRE=3D@protonmail.com">
      <div class=3D"protonmail_signature_block" style=3D"font-family: Ari=
al,
        sans-serif; font-size: 14px;">
        <div class=3D"protonmail_signature_block-user
          protonmail_signature_block-empty"> </div>
        <div class=3D"protonmail_signature_block-proton"> Sent with <a
            target=3D"_blank" href=3D"https://proton.me/" rel=3D"noopener
            noreferrer" moz-do-not-send=3D"true">Proton Mail</a> secure
          email. </div>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div class=3D"protonmail_quote"> ------- Original Message -------<b=
r>
        On Monday, September 25th, 2023 at 11:20, Ivan Zahartchuk
        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:adray0001@gmail=
.com">&lt;adray0001@gmail.com&gt;</a> wrote:<br>
        <br>
        <blockquote class=3D"protonmail_quote" type=3D"cite">
          <div dir=3D"ltr">
            <pre dir=3D"ltr" style=3D"text-align:left" id=3D"gmail-tw-tar=
get-text" class=3D"gmail-tw-data-text gmail-tw-text-large gmail-tw-ta"><s=
pan class=3D"gmail-Y2IQFc" lang=3D"en">Unfortunately, this has no effect =
on losses.</span></pre>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div class=3D"gmail_attr" dir=3D"ltr">=D0=BF=D0=BD, 25 =D0=B2=
=D0=B5=D1=80. 2023=E2=80=AF=D1=80. =D0=BE
              09:56 Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer
                nofollow noopener" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              =D0=BF=D0=B8=D1=88=D0=B5:<br>
            </div>
            <blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px
              solid rgb(204,204,204);padding-left:1ex"
              class=3D"gmail_quote">On 25/09/2023 01:28, Olo via
              USRP-users wrote:<br>
              &gt; I have same problem. Please have anyone clue what
              should I do ? My output from benchmark_rate --rx_rate
              20MHz:<br>
              &gt;<br>
              &gt; Benchmark rate summary:<br>
              &gt; Num received samples: 99900744<br>
              &gt; Num dropped samples: 100315437<br>
              &gt; Num overruns detected: 472<br>
              &gt;<br>
              &gt; Im using Windows 10 /w UHD 4.4 on B210.<br>
              &gt;<br>
              &gt;<br>
              You could use the "num_recv_frames" device argument:<br>
              <br>
              num_recv_frames=3D256<br>
              <br>
              See if that makes a difference.<br>
              <br>
              <br>
              &gt;<br>
              &gt;<br>
              &gt;<br>
              &gt;<br>
              &gt; Sent with Proton Mail secure email.<br>
              &gt;<br>
              &gt; ------- Original Message -------<br>
              &gt; On Saturday, September 23rd, 2023 at 23:40, Marcus
              M=C3=BCller &lt;<a target=3D"_blank"
                href=3D"mailto:marcus.mueller@ettus.com" rel=3D"noreferre=
r
                nofollow noopener" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">marcus.mueller@ettus.com<=
/a>&gt;
              wrote:<br>
              &gt;<br>
              &gt;<br>
              &gt;&gt; Sounds like the USB host controller's Windows
              driver and/or controller firmware coming<br>
              &gt;&gt; with that driver leave things to be desired. I
              honestly don't have a good recommendation<br>
              &gt;&gt; there, other than to make sure your Windows
              drivers are up to date =E2=80=93 Windows is not per se<br>
              &gt;&gt; worse than Linux at USB.<br>
              &gt;&gt;<br>
              &gt;&gt; Best,<br>
              &gt;&gt;<br>
              &gt;&gt; Marcus<br>
              &gt;&gt;<br>
              &gt;&gt; On 23.09.23 23:28, Ivan Zahartchuk wrote:<br>
              &gt;&gt;<br>
              &gt;&gt;&gt; Hello. I have an issue with reading data from
              the USRP B200 on Windows 10. When I run<br>
              &gt;&gt;&gt; the benchmark_rate with a 20 MHz reception
              bandwidth, I see losses of more than 50<br>
              &gt;&gt;&gt; percent. However, there are no losses during
              transmission. I have followed all the<br>
              &gt;&gt;&gt; instructions, including modifying the
              registry and disabling power management for USB.<br>
              &gt;&gt;&gt; The same issue occurs even when using an
              external power supply. Can you please advise on<br>
              &gt;&gt;&gt; what the possible problems might be? On the
              same PC, when using Ubuntu, I can receive 50<br>
              &gt;&gt;&gt; MHz with almost no losses.<br>
              &gt;&gt;&gt;<br>
              &gt;&gt;&gt;
              _______________________________________________<br>
              &gt;&gt;&gt; USRP-users mailing list -- <a
                target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.c=
om"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              &gt;&gt;&gt; To unsubscribe send an email to <a
                target=3D"_blank"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br>
              &gt;&gt; _______________________________________________<br=
>
              &gt;&gt; USRP-users mailing list -- <a target=3D"_blank"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"norefer=
rer
                nofollow noopener" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              &gt;&gt; To unsubscribe send an email to <a
                target=3D"_blank"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a target=3D"_blank"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"norefer=
rer
                nofollow noopener" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              &gt; To unsubscribe send an email to <a target=3D"_blank"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br>
              _______________________________________________<br>
              USRP-users mailing list -- <a target=3D"_blank"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"norefer=
rer
                nofollow noopener" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              To unsubscribe send an email to <a target=3D"_blank"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer nofollow noopener"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
        <br>
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

--------------CxdxH1pJ4NXDsMMPYPTaLOIl--

--===============5254249913885608177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5254249913885608177==--
