Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B137FA19B71
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 00:25:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B68983855C8
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 18:25:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737588306; bh=PXuE4rSR3MZphVyYADRe15rFDbD8Czbo1vAOU0dYpzg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f8WYT8tdIzcOKaPhYoIM4CZmG0tS4fjcMh5SjiqU3InvtLG4eOBz2SUS6uj6WTdjH
	 e/H+3I0+AHrliteRbP+oiP1uyGFowgzS5AvSebjbzA13+P4JzYyx+v6WMQn19A/iEP
	 uU7oCLF9SiSSmXYQn8Dc7vhoKDJ/gMtZQsh2ONJ8yjJPRJY1ZHBqw9dNOogawzbUwa
	 Bcl5i790Y479ZyTxtWm4ueH779uKy7K/6JmVHG/kqPlkPDOsg9KyyqzBy/VbwRQP03
	 V0+6q43EiyhhuM0TbF2vQVdNpaFqhn1u0WROWclnNiVnngSfQdPAPM9e7jpATO0N75
	 t6JZPRGDdIo0g==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D7042385558
	for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 18:24:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jZ5iE8E4";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7be3f230436so22818085a.3
        for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 15:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737588264; x=1738193064; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tBuWiuxq/hLswy5Z26J860k1dqXeZyGaFEGo1zYdphA=;
        b=jZ5iE8E45W6bs6J0BgSAEt/4jMOK9EyHiDZ9QJ/FZCKHB0Zt2JjczvdCu0vcYq8Alh
         ZUvAbngaF94v+5V59Vzx+5zxKpTI72EZ9MqOH8svp4NcrMubHRu4c6NB4h6p3YeWo2Cr
         nNRdjfracocL9SnildWTkdb/tsnxH8CoE8kg4wGQQyF2YxaOX9jkM8B+ZNl+6Bi9dq+B
         9ORQ6O5g/pH/W4QlAyENjK5X2fVlmVF6Oc7IaBd6LRlCPEam1O9BATX1hXAOGknWEOSm
         FuGNjRIbC8m0lEVUImNTBV0q/fUIi9OzurzGc89NqmbULtQ4UWEoHXQ+AoGni2/DEBS1
         xJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737588264; x=1738193064;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tBuWiuxq/hLswy5Z26J860k1dqXeZyGaFEGo1zYdphA=;
        b=uFvt3cdzAsw6JHASNgh1RXj52NRUg43ibG160cX6pmyHaDwFqAYjc6/zrf3IiNDgON
         rAIgSr8YiApShYzw5YtNBXpaspU3uhla642ihzvLEvY7FaEhV7+29r0kOTm4iMDU95s/
         zYKUUJBmmSwRe4gacOxXmvhSR0JObl8BL0+YEoXP4/31BmoHKPgW/2axI4hP0c1KWE99
         X5YFA+GHC51mFsOwpoSaTkvPH0PiDCRk5q51689E2RdQSIREptd4imyyz+iA/NYCje9X
         cefiqM9PqmXXtAYAD95ETAmOe6TYX0RvuXOOUyiysaSM420SSCzYfzVGPyN8vhF4kj1s
         ZKbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm2hyeQoOg3GnbV3/otm3meJAwiWQmD1p8eeSdyIipSoJtCx1kHGglVLMEYRGqNgOWqSXWJsMf/ZSv@lists.ettus.com
X-Gm-Message-State: AOJu0YyegteHjN9ge8iPn0iH9lVhg+L9HLoKer1ZZ/4GIvp+TryaREnJ
	UYXy7Psd5CQo9xQ9toLs83bowMGkjCYS9WdL6+2zz/QMJvqnDEGZfaatxA==
X-Gm-Gg: ASbGncuzeB4Qyu7T2GmStuia9r11HRRXI9Yv9vHhNYLa/IPiMKLaaof4SVmvyuEYqs/
	UUbOrpm96TZemJyS5vN5RT/90//lk6dAMQiR94sEktH5AJgm4Rb8o0gkHDUZpIuFKWNSQoo+C6K
	elRHX1U/Dx2U7LUgX02IV+gyK0mrJPk97b8IiPtdnFolP08PWi4Cy5fQKoH+42T/iXPiQ28f4yz
	2cz296sZmGK4ssqBBttVNqWxhs1fM4/4r/XqaMyfAnrkkyMFbC+zYF94UgsRwJhrzy07EmIZyW3
	drSi
X-Google-Smtp-Source: AGHT+IETIj29qDbeI5H3nLS0kiBPJh3fDsP/IBegYtExvDazzYEioqVKCtzTEdMZeFUT9cMpm+kQFw==
X-Received: by 2002:a05:620a:44d5:b0:7b6:d1f6:3dc with SMTP id af79cd13be357-7be6321bf8cmr4013858085a.18.1737588264000;
        Wed, 22 Jan 2025 15:24:24 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be61480541sm706892485a.42.2025.01.22.15.24.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 15:24:23 -0800 (PST)
Message-ID: <11e51aef-e2cd-4e52-bed2-0908dc7ba59b@gmail.com>
Date: Wed, 22 Jan 2025 18:24:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Heinz, Dominik" <dominik.heinz@h-da.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
 <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
 <a82baa39532e4545a88e3eb828100f8e@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a82baa39532e4545a88e3eb828100f8e@h-da.de>
Message-ID-Hash: N6SNT3S6XVYOIBXC3BYEWU275EWR45CH
X-Message-ID-Hash: N6SNT3S6XVYOIBXC3BYEWU275EWR45CH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6SNT3S6XVYOIBXC3BYEWU275EWR45CH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5167115636847251169=="

This is a multi-part message in MIME format.
--===============5167115636847251169==
Content-Type: multipart/alternative;
 boundary="------------fK9GLOyBG8cqp7345gnqRjg0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fK9GLOyBG8cqp7345gnqRjg0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/01/2025 08:58, Heinz, Dominik wrote:
>
> I followed the steps in the guide you linked, - however, I still have=20
> the issue.
>
> The uhd drivers are installed, and the niuspriorpc service is running.=20
> However, I still the the RIO session initialization failure.
>
>
> Anything else I could try? I still don't understand what is the cause=20
> for this.
>
I was away all day, so just seeing this now.

If you;

lspci -v

The X310 should show up--perhaps as "RIO device" or some such.=C2=A0 TBH,=
=20
I've never used the PCIe interface, and only about
 =C2=A0 5% or less of users of the X310 use the PCIe interface.

The other recollection I have is that in order for the system drivers to=20
"see" the X310, it needs to be powered-up at
 =C2=A0 system-boot time, or it won't be seen by the underlying OS.


You might also try doing the uhd_usrp_probe as "root", but I don't=20
*THINK* that's the issue.


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, January 21, 2025 8:32:39 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERN] [USRP-users] Re: X310 RIO Session Initialization=20
> Failure (Error code -63150)
> On 21/01/2025 09:26, Heinz, Dominik wrote:
>>
>> I'm experiencing an initialization issue with my Ettus X310 USRP devic=
e.
>>
>> My setup consists of an Ettus X310 connected through a PCIe Card=20
>> using a Molex cable to my Linux machine.
>>
>> I'm running Ubuntu with kernel version 6.8.0-51-generic and have=20
>> installed all the necessary UHD packages on the system.
>>
>>
>> The X310 is properly detected when running |uhd_find_devices|, but=20
>> attempting to probe the device with |uhd_usrp_probe| results in a RIO=20
>> session initialization error.
>> I attached the error output below.
>> What is causing this RIO session initialization failure and how can=20
>> it be resolved?
>>
>> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_device=
s
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
>> UHD_4.7.0.0-0ubuntu1~jammy1
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>> serial:
>> fpga: HG
>> name:
>> product: X310
>> resource: RIO0
>> type: x300
>>
>> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
>> UHD_4.7.0.0-0ubuntu1~jammy1
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>> [INFO] [X300] Using LVBITX bitfile=20
>> /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
>> Error: RuntimeError: x300_impl: Could not initialize RIO session.=20
>> Unknown error. (Error code -63150)
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> The procedures for making this work are here:
>
> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>
>

--------------fK9GLOyBG8cqp7345gnqRjg0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/01/2025 08:58, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a82baa39532e4545a88e3eb828100f8e@h-da.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>I followed the steps in the guide you linked, - however, I
          still have the issue.</p>
        <p>The uhd drivers are installed, and the niuspriorpc service is
          running. However, I still the the RIO session initialization
          failure.</p>
        <p><br>
        </p>
        <p>Anything else I could try? I still don't understand what is
          the cause for this.<br>
        </p>
      </div>
    </blockquote>
    I was away all day, so just seeing this now.<br>
    <br>
    If you;<br>
    <br>
    lspci -v<br>
    <br>
    The X310 should show up--perhaps as "RIO device" or some such.=C2=A0 =
TBH,
    I've never used the PCIe interface, and only about<br>
    =C2=A0 5% or less of users of the X310 use the PCIe interface.<br>
    <br>
    The other recollection I have is that in order for the system
    drivers to "see" the X310, it needs to be powered-up at<br>
    =C2=A0 system-boot time, or it won't be seen by the underlying OS.<br=
>
    <br>
    <br>
    You might also try doing the uhd_usrp_probe as "root", but I don't
    *THINK* that's the issue.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:a82baa39532e4545a88e3eb828100f8e@h-da.de">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>
        </p>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Tuesday, January 21, 2025 8:32:39 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Subject:</b> [EXTERN] [USRP-users] Re: X310 RIO Session
          Initialization Failure (Error code -63150)</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"moz-cite-prefix">On 21/01/2025 09:26, Heinz, Domini=
k
          wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:a2248846c3ab40e9b6f0c270dd50563e@h-da.de">
          <style type=3D"text/css" style=3D"display:none;">P {margin-top:=
0;margin-bottom:0;}</style>
          <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
            dir=3D"ltr">
            <p><span>I'm experiencing an initialization issue with my
                Ettus X310 USRP device.</span></p>
            <p><span><span>My setup consists of an Ettus X310 connected
                  through a PCIe Card using a Molex cable to my Linux
                  machine.
                  <br>
                </span></span></p>
            <p><span><span>I'm running Ubuntu with kernel version
                  6.8.0-51-generic and have installed all the necessary
                  UHD packages on the system.</span></span></p>
            <p><span><span><br>
                </span></span></p>
            <p><span><span></span></span></p>
            <div>The X310 is properly detected when running <code
class=3D"bg-text-200/5 border border-0.5 border-border-300 text-danger-00=
0 whitespace-pre-wrap rounded-[0.3rem] px-1 py-px text-[0.9rem]">
                uhd_find_devices</code>, but attempting to probe the
              device with <code
class=3D"bg-text-200/5 border border-0.5 border-border-300 text-danger-00=
0 whitespace-pre-wrap rounded-[0.3rem] px-1 py-px text-[0.9rem]">
                uhd_usrp_probe</code> results in a RIO session
              initialization error.</div>
            <div>I attached the error output below.</div>
            <div>What is causing this RIO session initialization failure
              and how can it be resolved?</div>
            <div><br>
            </div>
            <div>
              <div><span
                  style=3D"font-family: Consolas, Courier, monospace;">gn=
b@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
                  uhd_find_devices
                </span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">[INFO]
                  [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
                  UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">--------------------------------------------------</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">--
                  UHD Device 0</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">--------------------------------------------------</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">Device
                  Address:</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  serial: </span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  fpga: HG</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  name: </span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  product: X310</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  resource: RIO0</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">=C2=A0=C2=A0=C2=A0
                  type: x300</span></div>
              <div><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
                  uhd_usrp_probe
                </span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">[INFO]
                  [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
                  UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">[INFO]
                  [X300] X300 initialization sequence...</span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">[INFO]
                  [X300] Connecting to niusrpriorpc at localhost:5444...<=
/span><br>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">[INFO]
                  [X300] Using LVBITX bitfile
                  /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx</span><b=
r>
                <span style=3D"font-family: Consolas, Courier, monospace;=
">Error:
                  RuntimeError: x300_impl: Could not initialize RIO
                  session. Unknown error. (Error code -63150)</span></div=
>
              <br>
            </div>
            <br>
          </div>
          <br>
          <fieldset class=3D"moz-mime-attachment-header"></fieldset>
          <pre class=3D"moz-quote-pre" wrap=3D"">________________________=
_______________________
USRP-users mailing list -- <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:usrp-users@lists.ettus.com"
          moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:usrp-users-leave@lists.ettus.com"
          moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
        The procedures for making this work are here:<br>
        <br>
        <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie"
          moz-do-not-send=3D"true">https://files.ettus.com/manual/page_us=
rp_x3x0.html#x3x0_hw_pcie</a><br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------fK9GLOyBG8cqp7345gnqRjg0--

--===============5167115636847251169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5167115636847251169==--
