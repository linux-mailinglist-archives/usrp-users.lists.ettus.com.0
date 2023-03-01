Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDCB6A64BF
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 02:24:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 259873808C4
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 20:24:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677633851; bh=84WhAPnVWHpOoCksyicdjtACsa8BjBe4LARxu0Omgx4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=n34nElgRroJW1UOg514e1TJWFVV5Oz6RpbhmUZfrpego3PDI7gqH5dWf0TBA9FRdF
	 WKrV3XjTqQuUmSX12ZwwrCpLVdTU0astsPoXsK0n7CEW5gFLbyM69BXRXqi2B+drjX
	 CNsshnEQKeNpExzTmsiAq/MstGWj9S05GFBCOJgNIxeTSkktkgvLmIw0k33EXq3DSs
	 FfTOrrBsRf08/PwmrO2rI0CKNvPkDqFw6zHOLr84VeZEsOAzjUo9fLGNu/FYDbgozo
	 mmgmR72pDFGFRvtzKdXsdKPDzkfwb1A2ExP7RjEB2i8e1LT0CWcwzfLDHwcvOyBzNr
	 I0hfh3Nfr25vA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 11BC6384513
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 20:23:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M+0rQXc6";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id cf14so12706626qtb.10
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 17:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKJinY4MgfuhG0r3AvuovpwN5kMdy7j4JUFJkbJMcbA=;
        b=M+0rQXc6HKKzAKCC4wg/Z7N/mzyOXnNFqQPG0RjAUEbhgjqauKv53mfREqmyfo/MoL
         Ldj/bUU7dPVyh7mLoE76/VX7kNUOnij+1tJeftqtyfxKDnHz1m52gnvqiZwuvcGDKdLH
         WNYYU7Kn1Jyq30fwL4RdoXAy/itz0rNYOmG9VewPpq+HsSL4umOWgBqsz9BWtX523fRY
         uK+A0guyFwo1fqYZ1kEDIvlMl02lRzS8DCoA8CsyFTLNiDFawnCn3qAXHB8AD9N6UNpc
         OIFFa/4jlueuQFo29B7b8Ajfmh0lrgnUgh3werAwERV8bBpZkS4lwHxuWaxx9eJ7/jcm
         HwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XKJinY4MgfuhG0r3AvuovpwN5kMdy7j4JUFJkbJMcbA=;
        b=jUYKP3El7SogM/TKejwnX9SUd7E0zkbesl+SKxMcv4gdMs8mdJLAZq/0mu0Exda3IX
         seyv+ggJDQQQrcSYOuyaXTJlr5Af6CWlkiMlnNLvjcsPY3IXVuCLdeRo1R/n6WRzzYdM
         3fXKvxlgy/xG8AmdOI4zcnGsvQvbqZRQeh0kp9DtD67roGeJNmHKJgcfRDKTeSpRUPkU
         4HU8iobpnZ2ygkHPdT9rs9ThjM9Ymysonv7LboDCfFDoUezrsQH9AOhTfO9l6LmVk+Lq
         /L1XA6Qjzn8L3k4qwcodaqPSBW3j0xk5rrPggbsXT6by5JOAFqOZ2MNsNGTQfbh4E6l4
         Tz0A==
X-Gm-Message-State: AO0yUKWVUdcqNZ2B8DSn2P00ZE5vIm8xFNCJUkDYSjHdht6CSM0VY1zf
	hB54xbGUcoj7jeUEB9khmd5Z3EZlpoI=
X-Google-Smtp-Source: AK7set8yU8vXK0DpLL6RLPLu3zhtMEiVZYMdoz7F9ErHvSUqkur0e26dtmvidxGsOQ/ysi6DmhBeqQ==
X-Received: by 2002:ac8:7f89:0:b0:3bf:c346:a743 with SMTP id z9-20020ac87f89000000b003bfc346a743mr9046758qtj.39.1677633805371;
        Tue, 28 Feb 2023 17:23:25 -0800 (PST)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id x2-20020ac86b42000000b003b635a5d56csm7437969qts.30.2023.02.28.17.23.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 17:23:25 -0800 (PST)
Message-ID: <367f5663-6e9b-facb-81f9-eb475f488daa@gmail.com>
Date: Tue, 28 Feb 2023 20:23:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: 7FZQGMNQ4THKX5LUS4MD5VAVDDXMYGWT
X-Message-ID-Hash: 7FZQGMNQ4THKX5LUS4MD5VAVDDXMYGWT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows every 33s at 200 Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7FZQGMNQ4THKX5LUS4MD5VAVDDXMYGWT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3568441165626508235=="

This is a multi-part message in MIME format.
--===============3568441165626508235==
Content-Type: multipart/alternative;
 boundary="------------uPWlFvJi6mq0GcS2S4It2CK2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uPWlFvJi6mq0GcS2S4It2CK2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/02/2023 18:56, Eugene Grayver wrote:
> Hello,
>
> I have a simple application (C++) that essentially copies input to=20
> output.=C2=A0 Using X310, direct connect 10 GbE, DPDK.
> Each thread is tied to an isolated core, none of the cores (other than=20
> DPDK) uses more than 75%.
>
> UHD:
>
> GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.4.0.0-0-g5fac246=
b
>
> Kernel command line:
> |iommu=3Dpt intel_iommu=3Don hugepages=3D1024 isolcpus=3D1-7 nohz_full=3D=
1-7=20
> rcu_nocbs=3D1-7 irqaffinity=3D0 intel_idle.max_cstate=3D0 ipv6.disable=3D=
0=20
> fips=3D1|.
>
> I have turned off all the services I can think of, including irqbalance=
.
>
>
> I am seeing an underflow event every ~33.4s.=C2=A0 Very repeatable acro=
ss=20
> runs. Anyone have any idea what could be causing this?
>
>
> Eugene.
>
>
>
This is a "loopback through the computer stack" type application?=C2=A0=C2=
=A0=20
Basically a receiver and a transmitter, in separate threads, but
 =C2=A0 sharing a buffer between them?

These can be tricky, and plenty of others have "stumbled" with this type=20
of app, particularly at high sample rates.=C2=A0=C2=A0 I've never done on=
e of
 =C2=A0 these myself, but I suspect that some kind of elastic FIFO mechan=
ism=20
will be required.

I"m happy to have others chime in, but this class of application,=20
despite its *appearance* of simplicity can reveal the limitations of
 =C2=A0 ordinary general-purpose operating systems, and their schedulers,=
 and=20
buffer-management systems.



--------------uPWlFvJi6mq0GcS2S4It2CK2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/02/2023 18:56, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB912600BC9E69FC79BE21C2C4ECAC9@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I have a simple application (C++) that essentially copies input
        to output.=C2=A0 Using X310, direct connect 10 GbE, DPDK.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Each thread is tied to an isolated core, none of the cores
        (other than DPDK) uses more than 75%.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        UHD:=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted1">
        GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
        UHD_4.4.0.0-0-g5fac246b<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Kernel command line:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <code style=3D"font-family:SFMono-Medium, &quot;SF Mono&quot;,
          &quot;Segoe UI Mono&quot;, &quot;Roboto Mono&quot;,
          &quot;Ubuntu Mono&quot;, Menlo, Courier,
          monospace;color:rgb(23, 43,
          77);font-size:14px;background-color:rgb(255, 255, 255)"
          class=3D"ContentPasted0">iommu=3Dpt intel_iommu=3Don hugepages=3D=
1024
          isolcpus=3D1-7 nohz_full=3D1-7 rcu_nocbs=3D1-7 irqaffinity=3D0
          intel_idle.max_cstate=3D0 ipv6.disable=3D0 fips=3D1</code><span
          style=3D"color:rgb(23, 43, 77);font-family:-apple-system,
          BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen,
          Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;,
          &quot;Helvetica Neue&quot;,
          sans-serif;font-size:14px;background-color:rgb(255, 255,
          255);display:inline !important" class=3D"ContentPasted0"><span
            class=3D"ContentPasted0">=C2=A0</span>.</span><br>
      </div>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color: rg=
b(0,
            0, 0); background-color: rgb(255, 255, 255);">
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;">I have turned off all the
                  services I can think of, including irqbalance.</span></=
font></p>
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;"><br>
                </span></font></p>
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;">I am seeing an underflow
                  event every ~33.4s.=C2=A0 Very repeatable across runs.=C2=
=A0
                  Anyone have any idea what could be causing this?</span>=
</font></p>
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;"><br>
                </span></font></p>
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;">Eugene.</span></font></p>
            <p style=3D""><font face=3D"Arial, sans-serif"><span
                  style=3D"font-size: 13.33px;"><br>
                </span></font></p>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <font face=3D"Arial, sans-serif">This is a "loopback through the
      computer stack" type application?=C2=A0=C2=A0 Basically a receiver =
and a
      transmitter, in separate threads, but<br>
      =C2=A0 sharing a buffer between them?<br>
      <br>
      These can be tricky, and plenty of others have "stumbled" with
      this type of app, particularly at high sample rates.=C2=A0=C2=A0 I'=
ve never
      done one of<br>
      =C2=A0 these myself, but I suspect that some kind of elastic FIFO
      mechanism will be required.<br>
      <br>
      I"m happy to have others chime in, but this class of application,
      despite its *appearance* of simplicity can reveal the limitations
      of<br>
      =C2=A0 ordinary general-purpose operating systems, and their
      schedulers, and buffer-management systems.<br>
      <br>
      <br>
    </font><br>
  </body>
</html>

--------------uPWlFvJi6mq0GcS2S4It2CK2--

--===============3568441165626508235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3568441165626508235==--
