Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5C079E92A
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 15:25:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A06F73859A9
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 09:25:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694611530; bh=hgzvQrEE8YqaTIljsucvZP7oflWchgE4BVNcalfvbzg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a3eMHJOVk/D4UUI5kr99kUPsk7iTEThEflpboL5CXWiO3RyQ4JrftGtZsPNP5DKx0
	 rLlLeDErmCS7uUz/tQik2dknoxM/Q4mRu0JPf8s2OYzgWMh4Y6RmzBk+Wd3lobLXE6
	 uJwqh0H5D5zP+SoJ7bQ83Ir2uwB1fNQ+PDbI9UH5NshDuUMxXIW2u3tiRVdqYiAhg2
	 SOjwju0AZF2I30I00ZRq5wN+qpc1PhtGCyW/fSE5dWXLfu3Fchbg56GE9v0YbsPhEX
	 /AoBuaHK/MBFgz+d1nvMG6+Psm8+AzHF9rLtmOEzyTIb1vMRqVuP2D+7+veiidN+uj
	 ZcJTsnwOfNPdw==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B85E0385035
	for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 09:25:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FL0fO9tJ";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76f0807acb6so427913385a.1
        for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 06:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694611512; x=1695216312; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lglml6jqj1b+4qjgXwmHujebMBeJg5AtR8kRhbyFQV8=;
        b=FL0fO9tJEBf/+FhVw+gjBAgL2ncoQPt5u4a9PbKSlEY1/Cf1wO0JrG7TbkJiI3nXRh
         M8/1OgR8JpVxBqcB/lzVgau/VojPe8/RadBv8+PiYOjPTx6OvtHHNxkg/cWaKb03jayZ
         PqA6F82T5+fl46/sLfmuhLK9ulrM8aWArFriJiXerWAM+CtMVxnNJ02f30x+8h3zi0m6
         x+cWqkR+G8pL1c6X2fhJaDCK4RtK865AAezKMC/3RLkAFtC300/WAfGxZltOjBlLNAFH
         WjBc9t0JxI6zM8S0umBDgz7VfeWyalPHOlwqURnhWZeGMFOja9hrjszMarW2hhiTxmUm
         HiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694611512; x=1695216312;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lglml6jqj1b+4qjgXwmHujebMBeJg5AtR8kRhbyFQV8=;
        b=LDXyBvfUlvD2GanekviAO5t0ZnbZwz5McuUb3n2++wBQKfRZHNj4Vj2elPYn+c0aX+
         9+dwTiiRl+ApDTo/nBvaRxbSZlrNUBgLbUHgR/ficBAuzjsVh1BHsBmbnEUX55e2t8zq
         wOVYAnuEiBE1CM9GhQrZhT+RIT5FGsauIbKqTJ67eL/HjSZTbFG5x+kvFRM878cWNQEc
         hhvcqjefL1yvDxBnelezA+gJnAi8kUGFHXbl56NI9ys9/Q32vUkfRdLWthUXpDc4MDk/
         KfsE7vBWj6usdVJE4r3/fVXZYvGh3NCCx78k80Pu/pzmO9g5Cd/ipdb5SxFJfJeXH/CE
         4l3w==
X-Gm-Message-State: AOJu0YzLWlRhzkO20qPzo3O7jRBqjOBhfwRE+C+dZxlVWyCEHgi2X/Zs
	af3Vt5DnXRIduYFG/zrwFSWW9xt2eNX+hw==
X-Google-Smtp-Source: AGHT+IFy/hGABQ1Kce3Xwnn073FpFhHAirxNgPsnn5yOD87gPbswolQ6BKbEAH9m8ytc/PxWVXl5dg==
X-Received: by 2002:a05:620a:1aa9:b0:76c:e0c5:2f6c with SMTP id bl41-20020a05620a1aa900b0076ce0c52f6cmr2852598qkb.38.1694611511872;
        Wed, 13 Sep 2023 06:25:11 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d9-20020a37c409000000b0076f02a91fa8sm3868498qki.52.2023.09.13.06.25.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 06:25:11 -0700 (PDT)
Message-ID: <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>
Date: Wed, 13 Sep 2023 09:25:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0b554ad0-7aad-e2e3-74e3-8b1c1598a8c8@simula.no>
 <48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no>
Message-ID-Hash: HIMB7KOHE6DCGFOXCN3OARFIJ7UEKK3O
X-Message-ID-Hash: HIMB7KOHE6DCGFOXCN3OARFIJ7UEKK3O
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: nr-softmodem: reproducible segfault in libuhd with Ettus N310 SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HIMB7KOHE6DCGFOXCN3OARFIJ7UEKK3O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7973649536693501569=="

This is a multi-part message in MIME format.
--===============7973649536693501569==
Content-Type: multipart/alternative;
 boundary="------------6T0mTwOSANdvx5zDbh4FwKw8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6T0mTwOSANdvx5zDbh4FwKw8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/09/2023 05:32, Thomas Dreibholz wrote:
> Hi,
>
> the issue occurs in this code (radio/USRP/usrp_lib.cpp of OAI), in the=20
> red-marked line (line 757):
>
> =C2=A0samples_received=3D0;
> while(samples_received !=3D nsamps) {
>
> if(cc>1) {
> // receive multiple channels (e.g. RF A and RF B)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0std::vector<void*> buff_ptrs;
>
> for(inti=3D0; i<cc; i++) buff_ptrs.push_back(buff_tmp[i]+samples_receiv=
ed);
> *samples_received +=3D s->rx_stream->recv(buff_ptrs, nsamps, s->rx_md);=
 *
> }else{
> // receive a single channel (e.g. from connector RF A)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D=20
> s->rx_stream->recv((void*)((int32_t*)buff_tmp[0]+samples_received),
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nsamps-samples_received,=20
> s->rx_md);
> }
> if=C2=A0((s->wait_for_first_pps =3D=3D 0) &&=20
> (s->rx_md.error_code!=3Duhd::rx_metadata_t::ERROR_CODE_NONE))
> break;
>
> if((s->wait_for_first_pps =3D=3D 1) && (samples_received !=3D nsamps)) =
{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printf("sleep...\n"); //usleep(100);
> }
> }
>
> Reading the code, it seems to be for reading N channels and reading 1=20
> channel. For reading 1 channel, the length given to s->rx_stream->recv=20
> is nsamps-samples_received. However, for reading N channels, the=20
> length is always nsamps. Since the buffer may have already been=20
> incremented by samples_received > 0, this leads to overwriting the=20
> stack. So, this is very likely a bug in libuhd.
>
> Changing the code by:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (int i=3D0; i<cc; i++)=20
> buff_ptrs.push_back(buff_tmp[i]+samples_received);
> - =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D s->rx_stream->rec=
v(buff_ptrs, nsamps,=20
> s->rx_md);
> + =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D s->rx_stream->rec=
v(buff_ptrs,=20
> nsamps-samples_received, s->rx_md);
> =C2=A0=C2=A0=C2=A0=C2=A0} else {
>
> lets nr-softmodem proceed without segfault. But then, it prints a lot=20
> of these lines:
>
> [PHY] =C2=A0=C2=A0rx_rf: Asked for 30720 samples, got 20941 from USRP
> [PHY] =C2=A0=C2=A0problem receiving samples
> LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW=
]=20
> =C2=A0=C2=A0[recv] received 20941 samples out of 30720
> [HW] =C2=A0=C2=A0Time: 4.35875 s
> ERROR_CODE_OVERFLOW (Overflow)
>
> [PHY] =C2=A0=C2=A0rx_rf: Asked for 30720 samples, got 20941 from USRP
> [PHY] =C2=A0=C2=A0problem receiving samples
> LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW=
]=20
> =C2=A0=C2=A0[recv] received 20941 samples out of 30720
> [HW] =C2=A0=C2=A0Time: 4.41057 s
> ERROR_CODE_OVERFLOW (Overflow)
> ...
>
>
> On 9/13/23 10:55, Thomas Dreibholz wrote:
>> I am trying to get OAI's nr-softmodem to run with an Ettus URSP N310,=20
>> using=20
>> targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.band78.sa.fr1.106PRB.2x2.usrp=
n310.conf=20
>> with just having adapted the IP addresses of the core and device.=20
>> Regardless of trying with UHD 4.1 to 4.4, and regardless of the tags=20
>> for OAI used (latest tried: 2023.w36), running nr-softmodem=20
>> reproducibly segfaults after a few seconds in libuhd:=20
> --=20
> Best regards / Mit freundlichen Gr=C3=BC=C3=9Fen / Med vennlig hilsen
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   Thomas Dreibholz
>
>   SimulaMet =E2=80=94 Simula Metropolitan Centre for Digital Engineerin=
g
>   Centre for Resilient Networks and Applications
>   Pilestredet 52
>   0167 Oslo, Norway
> -----------------------------------------------------------------------
>   E-Mail:dreibh@simula.no
>   Homepage:http://simula.no/people/dreibh
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Unless I'm badly mistaken, this IS NOT a bug in UHD, but rather a bug in=20
nr-softmodem--it's mis-managing its buffer pointers.
 =C2=A0 Nothing that UHD can do about that.=C2=A0 C++ doesn't have run-ti=
me bounds=20
checking.


--------------6T0mTwOSANdvx5zDbh4FwKw8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/09/2023 05:32, Thomas Dreibholz
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      Hi,<br>
      <br>
      the issue occurs in this code (radio/USRP/usrp_lib.cpp of OAI), in
      the red-marked line (line 757):<br>
      <br>
      <span style=3D"font-family:monospace"><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0samples=
_received=3D</span><span
          style=3D"color:#18b2b2;background-color:#ffffff;">0</span><span
          style=3D"color:#000000;background-color:#ffffff;">; </span><br>
        =C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">while</span><span
          style=3D"color:#000000;background-color:#ffffff;">
          (samples_received !=3D nsamps) </span><span
          style=3D"color:#b218b2;background-color:#ffffff;">{</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        <br>
        =C2=A0=C2=A0=C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">if</span><span
          style=3D"color:#000000;background-color:#ffffff;"> (cc&gt;</spa=
n><span
          style=3D"color:#18b2b2;background-color:#ffffff;">1</span><span
          style=3D"color:#000000;background-color:#ffffff;">) </span><spa=
n
          style=3D"color:#b218b2;background-color:#ffffff;">{</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span style=3D"color:#18b218;backgr=
ound-color:#ffffff;">//
          receive multiple channels (e.g. RF A and RF B)</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0std::vector&lt;<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">void</span><span
          style=3D"color:#000000;background-color:#ffffff;"> *&gt;
          buff_ptrs; </span><br>
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">for</span><span
          style=3D"color:#000000;background-color:#ffffff;"> (</span><spa=
n
style=3D"font-weight:bold;color:#000000;background-color:#ffffff;">int</s=
pan><span
          style=3D"color:#000000;background-color:#ffffff;"> i=3D</span><=
span
          style=3D"color:#18b2b2;background-color:#ffffff;">0</span><span
          style=3D"color:#000000;background-color:#ffffff;">; i&lt;cc;
          i++) buff_ptrs.push_back(buff_tmp[i]+samples_received); </span>=
<br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<font color=3D"#ff0000"><b>samples_=
received +=3D
            s-&gt;rx_stream-&gt;recv(buff_ptrs, nsamps, s-&gt;rx_md); </b=
></font><br>
        =C2=A0=C2=A0=C2=A0<span style=3D"color:#b218b2;background-color:#=
ffffff;">}</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><span
style=3D"font-weight:bold;color:#000000;background-color:#ffffff;">else</=
span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><span
          style=3D"color:#b218b2;background-color:#ffffff;">{</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span style=3D"color:#18b218;backgr=
ound-color:#ffffff;">//
          receive a single channel (e.g. from connector RF A)</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D s-&gt;rx_stre=
am-&gt;recv((<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">void</span><span
          style=3D"color:#000000;background-color:#ffffff;">*)((int32_t*)=
buff_tmp[</span><span
          style=3D"color:#18b2b2;background-color:#ffffff;">0</span><span
          style=3D"color:#000000;background-color:#ffffff;">]+samples_rec=
eived),
        </span><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nsamps-samples_received,
        s-&gt;rx_md); <br>
        =C2=A0=C2=A0=C2=A0<span style=3D"color:#b218b2;background-color:#=
ffffff;">}</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">if</span><span
          style=3D"color:#000000;background-color:#ffffff;">
          =C2=A0((s-&gt;wait_for_first_pps =3D=3D </span><span
          style=3D"color:#18b2b2;background-color:#ffffff;">0</span><span
          style=3D"color:#000000;background-color:#ffffff;">) &amp;&amp;
          (s-&gt;rx_md.error_code!=3Duhd::rx_metadata_t::ERROR_CODE_NONE)=
)
        </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">break</span><span
          style=3D"color:#000000;background-color:#ffffff;">; </span><br>
        <br>
        =C2=A0=C2=A0=C2=A0<span
          style=3D"font-weight:bold;color:#000000;background-color:#fffff=
f;">if</span><span
          style=3D"color:#000000;background-color:#ffffff;">
          ((s-&gt;wait_for_first_pps =3D=3D </span><span
          style=3D"color:#18b2b2;background-color:#ffffff;">1</span><span
          style=3D"color:#000000;background-color:#ffffff;">) &amp;&amp;
          (samples_received !=3D nsamps)) </span><span
          style=3D"color:#b218b2;background-color:#ffffff;">{</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0printf(<span
          style=3D"color:#18b2b2;background-color:#ffffff;">"sleep...</sp=
an><span
style=3D"font-weight:bold;color:#54ffff;background-color:#ffffff;">\n</sp=
an><span
          style=3D"color:#18b2b2;background-color:#ffffff;">"</span><span
          style=3D"color:#000000;background-color:#ffffff;">); </span><sp=
an
          style=3D"color:#18b218;background-color:#ffffff;">//usleep(100)=
;</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0<span style=3D"color:#b218b2;background-color:#=
ffffff;">}</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0<span style=3D"color:#b218b2;background-color:#ffffff;">}</=
span><br>
        <span style=3D"color:#000000;background-color:#ffffff;"> </span><=
/span><br>
      Reading the code, it seems to be for reading N channels and
      reading 1 channel. For reading 1 channel, the length given to
      s-&gt;rx_stream-&gt;recv is nsamps-samples_received. However, for
      reading N channels, the length is always nsamps. Since the buffer
      may have already been incremented by samples_received &gt; 0, this
      leads to overwriting the stack. So, this is very likely a bug in
      libuhd.<br>
      <br>
      Changing the code by:<br>
      <br>
      <span style=3D"font-family:monospace"><span
          style=3D"color:#000000;background-color:#ffffff;"> =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 for
          (int i=3D0; i&lt;cc; i++)
          buff_ptrs.push_back(buff_tmp[i]+samples_received); </span><br>
        <span style=3D"color:#b21818;background-color:#ffffff;">-
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D s-&gt;rx_st=
ream-&gt;recv(buff_ptrs,
          nsamps, s-&gt;rx_md);</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        <span style=3D"color:#18b218;background-color:#ffffff;">+
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0samples_received +=3D s-&gt;rx_st=
ream-&gt;recv(buff_ptrs,
          nsamps-samples_received, s-&gt;rx_md);</span><span
          style=3D"color:#000000;background-color:#ffffff;"> </span><br>
        =C2=A0=C2=A0=C2=A0=C2=A0} else {<br>
        <br>
      </span>lets nr-softmodem proceed without segfault. But then, it
      prints a lot of these lines:<br>
      <br>
      <span style=3D"font-family:monospace"><span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[PHY]
          =C2=A0=C2=A0rx_rf: Asked for 30720 samples, got 20941 from USRP=
</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[PHY]
          =C2=A0=C2=A0problem receiving samples</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLO<span
style=3D"font-weight:bold;color:#ff5454;background-color:#ffffff;">[HW]
          =C2=A0=C2=A0[recv] received 20941 samples out of 30720</span><s=
pan
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[HW]
          =C2=A0=C2=A0Time: 4.35875 s</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">ERROR_CODE_OVERFLOW
          (Overflow)</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[PHY]
          =C2=A0=C2=A0rx_rf: Asked for 30720 samples, got 20941 from USRP=
</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[PHY]
          =C2=A0=C2=A0problem receiving samples</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLO<span
style=3D"font-weight:bold;color:#ff5454;background-color:#ffffff;">[HW]
          =C2=A0=C2=A0[recv] received 20941 samples out of 30720</span><s=
pan
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">[HW]
          =C2=A0=C2=A0Time: 4.41057 s</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0</span><span
          style=3D"color:#000000;background-color:#ffffff;">=C2=A0</span>=
<br>
        <span
          style=3D"font-weight:bold;color:#ff5454;background-color:#fffff=
f;">ERROR_CODE_OVERFLOW
          (Overflow)</span><span
          style=3D"color:#b21818;background-color:#ffffff;">
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><br>
      </span>...<br>
      <br>
      <br>
      <div class=3D"moz-cite-prefix">On 9/13/23 10:55, Thomas Dreibholz
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:0b554ad0-7aad-e2e3-74e3-8b1c1598a8c8@simula.no">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        I am trying to get OAI's nr-softmodem to run with an Ettus URSP
        N310, using
targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.band78.sa.fr1.106PRB.2x2.usrpn31=
0.conf
        with just having adapted the IP addresses of the core and
        device. Regardless of trying with UHD 4.1 to 4.4, and regardless
        of the tags for OAI used (latest tried: 2023.w36), running
        nr-softmodem reproducibly segfaults after a few seconds in
        libuhd: </blockquote>
      <pre class=3D"moz-signature" cols=3D"72">--=20
Best regards / Mit freundlichen Gr=C3=BC=C3=9Fen / Med vennlig hilsen

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 Thomas Dreibholz

 SimulaMet =E2=80=94 Simula Metropolitan Centre for Digital Engineering
 Centre for Resilient Networks and Applications
 Pilestredet 52
 0167 Oslo, Norway
-----------------------------------------------------------------------
 E-Mail:     <a class=3D"moz-txt-link-abbreviated moz-txt-link-freetext" =
href=3D"mailto:dreibh@simula.no" moz-do-not-send=3D"true">dreibh@simula.n=
o</a>
 Homepage:   <a class=3D"moz-txt-link-freetext" href=3D"http://simula.no/=
people/dreibh" moz-do-not-send=3D"true">http://simula.no/people/dreibh</a=
>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</pre>
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
    Unless I'm badly mistaken, this IS NOT a bug in UHD, but rather a
    bug in nr-softmodem--it's mis-managing its buffer pointers.<br>
    =C2=A0 Nothing that UHD can do about that.=C2=A0 C++ doesn't have run=
-time
    bounds checking.<br>
    <br>
    <br>
  </body>
</html>

--------------6T0mTwOSANdvx5zDbh4FwKw8--

--===============7973649536693501569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7973649536693501569==--
