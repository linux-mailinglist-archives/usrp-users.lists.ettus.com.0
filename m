Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FA47B7608
	for <lists+usrp-users@lfdr.de>; Wed,  4 Oct 2023 02:59:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA9FF3851DB
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 20:59:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696381189; bh=DwXOD0SIe6Kb3A+WrPrGsYwxGt0wJ2P8NQu59yw2Sw0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eGNrbmO1n/iVwvj92Ktm8x5YFJte5Nm2UPe6JtYiHv7OF9KhT9cVuvJCkUjKir6TU
	 J7kYg4tZ2o7elLqSAPMGr/C/+JrSbdJIUuzIdQUJB3cRIv4XgnnD8PlC4K7eKHh53C
	 ES+CiRTVrGNrERHsWGmOOIUGdp8b52O7lA0NImzXMNg+G5Jh/233I3Ort7F984hG3+
	 AF1DWyXLP9ImeH5xFYdI0jWjzJZqysE9uYlwGokgs5R/MHP2QLfWJDdmbdMicc9t4j
	 dazKxj6ftj5SUsn8IdPSNHI54Kcww2bzOnN/bzdLcsJOlvhkbgK2EjxBEw/W78MNBK
	 7CFCCBwn8LPqA==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DAEF3812FB
	for <usrp-users@lists.ettus.com>; Tue,  3 Oct 2023 20:58:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ey5zlD3r";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7741c2fae49so110821985a.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Oct 2023 17:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696381132; x=1696985932; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LjQHtkctYUF++HBv4AvL5WdZiD04COgUXi1UAsSCGg0=;
        b=Ey5zlD3r2TCVTZK7l3BD2O/BEPIiTY7+82Eh8CvCUk5dCBSOj6mzqJjF5P06+0AYPZ
         Mfq9ToqKHSiX8JRczo67NCjMGES/ltwWQNK9WLLeuLa4XSHCb6G3SF99Pf/eeGP7t/v1
         BBkGEIIGeB0eX58ZBuV+WKDkJRANqW/To7vbRcy0Togs2Qnl5SEBMdg1k/y1fwDWHYej
         Os6TWBcUs0kbxdezh8ZvCfs4m0n5Q1/PB+1tnfACraj2FitvA69oKqVu948seVDaD3S/
         hYTvsP6kYR8Msoy6HuSo7qmJVzlvP/fnuSChYaT3WQdtceZrevEftzxrMkRleDU0mXvo
         DOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696381132; x=1696985932;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LjQHtkctYUF++HBv4AvL5WdZiD04COgUXi1UAsSCGg0=;
        b=nc6T3lszvWKPstawn/ib6ufUiQQOTKU9RuQiSEJHlU9kgS1Z2KzOIGQZ2VHGDlZI1v
         Zxd2FzerkyCEmzbuIVnDefGjn6VabYE0W9RfGnZ0zyaPXZSjLse8eVaV+Cs7gR4KPGVO
         VPZUivHYkwfloTi590kAaUrgfkAW1a2777rygq2iDiww1VzDos4ydTmj+YZzFAf5p1ee
         D5zfIC/e8ZlxWZwCD5I457OzOs44c6qa70uQKAHVOHLYpMpmL/ZR6MQbH6iIty7v8chs
         LAQjCbFCVRt1QscXLyOugEhi6FFzqDRPXO597HgkAPsuuqeIFZAXuYAxMf2vi4qQsoFW
         si9w==
X-Gm-Message-State: AOJu0Yy22uNtpFEodt6IbA1A5yV0HQ+9yXQ+J546ekWbWY/jrtMHJozZ
	1vRUIbi2cwm4hMvXQ4Z2N2boINOGhvc=
X-Google-Smtp-Source: AGHT+IE+2Xycx9m9H9gElXcq0eJd2QTtM9N++aHG1oui3LSnfr6zHbqQS8eaSnOPdL5vE8sQ3en3IA==
X-Received: by 2002:a05:620a:280c:b0:775:93aa:cb91 with SMTP id f12-20020a05620a280c00b0077593aacb91mr1232173qkp.35.1696381132236;
        Tue, 03 Oct 2023 17:58:52 -0700 (PDT)
Received: from [192.168.2.137] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id pa4-20020a05620a830400b00767dcf6f4adsm880359qkn.51.2023.10.03.17.58.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 17:58:51 -0700 (PDT)
Message-ID: <333b6caa-0c96-ff9e-6cee-f0bd0873a291@gmail.com>
Date: Tue, 3 Oct 2023 20:58:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk@lists.ettus.com>
Message-ID-Hash: AG24PWBYUNQ2X737HPAYHXACIT66YING
X-Message-ID-Hash: AG24PWBYUNQ2X737HPAYHXACIT66YING
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFDC initialization in UHD 4.5.0.0 for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AG24PWBYUNQ2X737HPAYHXACIT66YING/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2671607676111417424=="

This is a multi-part message in MIME format.
--===============2671607676111417424==
Content-Type: multipart/alternative;
 boundary="------------U2i65NXFEF1bsdJkGA6DqLE7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------U2i65NXFEF1bsdJkGA6DqLE7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/10/2023 19:05, jmaloyan@umass.edu wrote:
>
>
> Hello,
> My application requires that I edit the RFDC applications, however, I=20
> am confused about how the UHD C++ API interfaces with the RFDC on the=20
> RFSoC.
> It appears when I make the RFNoC graph, the namespace=20
> x400_radio_control_impl is called, which starts the process of=20
> programming the RFDC as well as running Self Calibration. For=20
> reference, I instantiate my graph similar to the examples
>
>
> |//Create RFNoC graph
> std::cout << std::endl;
> std::cout << "Creating the RFNoC graph with args: " << args << std::end=
l;
> auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);
> =E2=80=A6
> auto radio_rx_ctrl =3D=20
> graph->get_block<uhd::rfnoc::radio_control>(radio_rx_ctrl_id);|
>
>
> I have been able to trace up to rfnoc_graph.cpp, where once a graph is=20
> commited, it starts to create an object for each NoC. Following the=20
> RFNOC logs that print after the UHD 4.5 update, I found where the log=20
> =E2=80=9C[INFO] [0/Radio#0] Calibrating channel 0=E2=80=9D came from, w=
hich was found=20
> in x400_radio_control.cpp. So now, I am led to believe that whenever=20
> the radio block is instantiated, the RFDC properties get instantiated=20
> as well.
>
>
> After this part, is where my confusion starts=E2=80=A6
> After following the logs which appear right before the RFNoC logs=20
> regarding calibration, specifically
>
>
> |[INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:
> DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz
> DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz|
>
>
> it seems there is a file x4xx_clock_mgr.py which supposedly sets the=20
> master clock rate and the converter rate, which is called by x4xx.py.=20
> x4xx.py also calls another function in x4xx_clock_policy.py, which=20
> seems to be the function of interest as it sets the properties on the=20
> RFDC, albeit hardcoded. The problem is I have not been able to trace=20
> how I get from x400_radio_control.cpp to x4xx.py.
>
>
> In short, am I correct that there is a trace between=20
> x400_radio_control.cpp and x4xx.py trace, and if so, where in the UHD=20
> C++ API does it call a python file, specifically the x4xx.py?
>
>
> Thanks
> Joe
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
x4xx.py appears to be part of MPM, so your host-side UHD would never=20
call it directly.=C2=A0 Rather the MPM server on the X410 radio
 =C2=A0 would use it as appropriate.=C2=A0=C2=A0 I'm not particularly fam=
iliar with the=20
internals of MPM, but a lot of it is written in Python.



--------------U2i65NXFEF1bsdJkGA6DqLE7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/10/2023 19:05, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:iB9BWiQeClrqDetmuP1KHQz5xH3HA29DfqZykXk75zk@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p><br>
        Hello,<br>
        My application requires that I edit the RFDC applications,
        however, I am confused about how the UHD C++ API interfaces with
        the RFDC on the RFSoC.<br>
        It appears when I make the RFNoC graph, the namespace
        x400_radio_control_impl is called, which starts the process of
        programming the RFDC as well as running Self Calibration. For
        reference, I instantiate my graph similar to the examples</p>
      <p><br>
        <code>//Create RFNoC graph<br>
          std::cout &lt;&lt; std::endl;<br>
          std::cout &lt;&lt; "Creating the RFNoC graph with args: "
          &lt;&lt; args &lt;&lt; std::endl;<br>
          auto graph =3D uhd::rfnoc::rfnoc_graph::make(args);<br>
          =E2=80=A6<br>
          auto radio_rx_ctrl =3D
          graph-&gt;get_block&lt;uhd::rfnoc::radio_control&gt;(radio_rx_c=
trl_id);</code></p>
      <p><br>
        I have been able to trace up to rfnoc_graph.cpp, where once a
        graph is commited, it starts to create an object for each NoC.
        Following the RFNOC logs that print after the UHD 4.5 update, I
        found where the log =E2=80=9C[INFO] [0/Radio#0] Calibrating chann=
el 0=E2=80=9D
        came from, which was found in x400_radio_control.cpp. So now, I
        am led to believe that whenever the radio block is instantiated,
        the RFDC properties get instantiated as well. </p>
      <p><br>
        After this part, is where my confusion starts=E2=80=A6<br>
        After following the logs which appear right before the RFNoC
        logs regarding calibration, specifically</p>
      <p><br>
        <code>[INFO] [MPM.PeriphManager.ClkMgr] Using Clock
          Configuration:<br>
          DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912
          GHz<br>
          DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912
          GHz</code> </p>
      <p><br>
        it seems there is a file x4xx_clock_mgr.py which supposedly sets
        the master clock rate and the converter rate, which is called by
        x4xx.py. x4xx.py also calls another function in
        x4xx_clock_policy.py, which seems to be the function of interest
        as it sets the properties on the RFDC, albeit hardcoded. The
        problem is I have not been able to trace how I get from
        x400_radio_control.cpp to x4xx.py. </p>
      <p><br>
        In short, am I correct that there is a trace between
        x400_radio_control.cpp and x4xx.py trace, and if so, where in
        the UHD C++ API does it call a python file, specifically the
        x4xx.py? </p>
      <p><br>
        Thanks<br>
        Joe<br>
        <br>
        <br>
      </p>
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
    x4xx.py appears to be part of MPM, so your host-side UHD would never
    call it directly.=C2=A0 Rather the MPM server on the X410 radio<br>
    =C2=A0 would use it as appropriate.=C2=A0=C2=A0 I'm not particularly =
familiar with
    the internals of MPM, but a lot of it is written in Python.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------U2i65NXFEF1bsdJkGA6DqLE7--

--===============2671607676111417424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2671607676111417424==--
