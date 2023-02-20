Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFDE69D1BE
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 17:57:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E2103818CD
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 11:57:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676912254; bh=6pku70Yc6pu3QBuwCGf/ya0vcrlmLjHMk++LOsFATlY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=T7FZJl8ZK32U+oOs8s8kM9AG9rDcr4fe1EinATu3ehtNuIXWwwxc7oirEQeA++Ra3
	 bk+o2MDIFPm8i0HxdsHTqJb0rBw1W6RRmceBKp4DVSRyjw4DIxVGtjF+grI+1Wklla
	 dQ21hTjpLgZy9Xh44rErHpetWmJcIU4jTFc0WP+HdfO0Qxf4DAVmWor+Ph4azBD1l+
	 RAq+DkAWKpbWxXpjfXBDvOVjFVoO7dW7ZnTidWVYBFUlJjuNcjSwhxBoxWp3xZmkR7
	 aCiZrrKPdALdy7I6LkszugHkkZNYH/je5vVB2dYDqPA1ABx/HvYjouKYLkZelYR3GH
	 I3rVWJfSL6ZNg==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E331380F6F
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 11:56:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VARBNxAP";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id ay9so1170672qtb.9
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 08:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LiEhJZytKGLfDZSjeGLYpT4UdxkM+IykoI+movrf+gM=;
        b=VARBNxAP9K+Zc6AK2tUMjelUq2FaMFRUrB16+TRyOB2qhYMP9/ZC2Vd9Fccfu1iZCt
         LlOPW2H3Bh5yfxsZxTzxROThZVAVQ1pByMksl0lgqZ1Y/1E8awJKZ3ShtTpderjWDDQN
         /pyjKZ9tJqUcUFqArVriP1N/nlUrL+20FVMogPkWdXLiIP088QtzD63PVAkZfcWBlgcU
         zJvuEbp7X+w0mVqjkVEdWlrp8pXekHyFunoUYbxne0vMYNXo2i0vY38aNtZfVHObDwbG
         Eum1ULQXnwPRdQpgreuD6IYzir5b9xB022O4/oPIOVbLse2J98a86oZ63/ObnjcvG8ux
         7ixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LiEhJZytKGLfDZSjeGLYpT4UdxkM+IykoI+movrf+gM=;
        b=Kwo/Q5m9Tos+4YOoLhr/w0bd0Bs7xZz9VH/ugkyK0p2HVZF1hOR3kx0cmJDhHamvkg
         LcdHL8n0QlZwMS+oPeIOks36Wm/tiX0acncstDtB5QYZlDxC8DZ6gTV21Ny1ddG7P2BQ
         WtOBKPvQvjtG4tp2uOEN5r+KeLWpiAZSVDs+IOlOexXIkiKH76JdqWFqznawtBaxlMoD
         AX9eahOIxVLKre2UT51Bg7fP2X+a75vDvkg73HMwcN2n7DwqSfCOzxbU2IafcOfWZ3Se
         5sDBKCbbWTgfCdFrbAGk19shzgHXs8kIpqKk/0HW1z6Rrj6PCbuBUnzhvI29BOlKXZgZ
         Fwgw==
X-Gm-Message-State: AO0yUKUB0EGthPtUIaOZgExidVuwe8fF2DIDyzY6NY3gjtEbx9xTRprx
	+Q3t6KWaZH7nP4QlDWazXSBdDeGCrXk=
X-Google-Smtp-Source: AK7set/Htk8g7nmm0EN89wq9DDIRHanCuLX04U42XMsiPXdeoSU03XvE47mBd9fQD9z8+qCuDq20XA==
X-Received: by 2002:a05:622a:1106:b0:3b9:e4cf:ce2d with SMTP id e6-20020a05622a110600b003b9e4cfce2dmr3403319qty.16.1676912205323;
        Mon, 20 Feb 2023 08:56:45 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x6-20020ac85f06000000b003b6325dfc4esm204612qta.67.2023.02.20.08.56.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 08:56:45 -0800 (PST)
Message-ID: <6769d321-f0fc-a613-2aff-80f0f6d8ac4e@gmail.com>
Date: Mon, 20 Feb 2023 11:56:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com>
Message-ID-Hash: DVJ4RCBF5WE5GIZ6SAZYRLR5VM4GC3LC
X-Message-ID-Hash: DVJ4RCBF5WE5GIZ6SAZYRLR5VM4GC3LC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DVJ4RCBF5WE5GIZ6SAZYRLR5VM4GC3LC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7736790212407242566=="

This is a multi-part message in MIME format.
--===============7736790212407242566==
Content-Type: multipart/alternative;
 boundary="------------dX3WOM1iUcdC4ILCK0l0BrWk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dX3WOM1iUcdC4ILCK0l0BrWk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/02/2023 11:38, jmaloyan@umass.edu wrote:
>
> Hello,
>
>
> I still run into the same issue, even after I have changed to parameter=
s.
>
> |/usr/local/lib/uhd/examples/benchmark_rate --args=20
> "type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock=
_rate=3D200e6"=20
> --duration 60 --channels 0 --rx_rate 31.25e6 --rx_subdev "A:0"=20
> --tx_rate 31.25e6 --tx_subdev "A:0"|
>
> And the error is here
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.3.0.HEAD-0-g1f8fd345|
>
> |[00:00:00.000229] Creating the usrp device with:=20
> type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock_=
rate=3D200e6...|
>
> |[INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,n=
ame=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2,maste=
r_clock_rate=3D200e6|
>
> |[INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dn=
i-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinter=
nal'.|
>
> |[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.=20
> EnvironmentError: IOError: Timed out getting recv buff for management=20
> transaction|
>
> |[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=20
> EnvironmentError: IOError: Timed out getting recv buff for management=20
> transaction|
>
> |[INFO] [MPM.Rhodium-0] init() called with args=20
> `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dn=
i-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinter=
nal'|
>
> |[INFO] [MPM.Rhodium-1] init() called with args=20
> `fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dn=
i-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinter=
nal'|
>
> |Error: RuntimeError: Failure to create rfnoc_graph.|
>
|Hmmmm, I'm not sure then.=C2=A0=C2=A0=C2=A0 I don't have an N320 myself.=
 I'll have to=20
dig around a little.

Also, just as an FYI, and not related to this error, your sample rate=20
has to have an integer relationship to the master clock rate.=C2=A0=C2=A0=
 31.25=20
does not evenly divide 200....


|
--------------dX3WOM1iUcdC4ILCK0l0BrWk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/02/2023 11:38, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I still run into the same issue, even after I have changed to
        parameters.</p>
      <p><code>/usr/local/lib/uhd/examples/benchmark_rate --args
"type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock_r=
ate=3D200e6"
          --duration 60 --channels 0 --rx_rate 31.25e6 --rx_subdev "A:0"
          --tx_rate 31.25e6 --tx_subdev "A:0"</code></p>
      <p>And the error is here</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.3.0.HEAD-0-g1f8fd345</code></p>
      <p><code>[00:00:00.000229] Creating the usrp device with:
type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock_ra=
te=3D200e6...</code></p>
      <p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with
          args:
mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,nam=
e=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2,master_=
clock_rate=3D200e6</code></p>
      <p><code>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dni-=
n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinterna=
l'.</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM
          initialization. EnvironmentError: IOError: Timed out getting
          recv buff for management transaction</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] Caught exception while
          initializing graph: EnvironmentError: IOError: Timed out
          getting recv buff for management transaction</code></p>
      <p><code>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dni-=
n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinterna=
l'</code></p>
      <p><code>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=3DXG,master_clock_rate=3D200e6,mgmt_addr=3D192.168.1.151,name=3Dni-=
n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinterna=
l'</code></p>
      <p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code>=
</p>
    </blockquote>
    <code>Hmmmm, I'm not sure then.=C2=A0=C2=A0=C2=A0 I don't have an N32=
0 myself.=C2=A0
      I'll have to dig around a little.<br>
      <br>
      Also, just as an FYI, and not related to this error, your sample
      rate has to have an integer relationship to the master clock
      rate.=C2=A0=C2=A0 31.25 does not evenly divide 200....<br>
      <br>
      <br>
    </code><br>
  </body>
</html>

--------------dX3WOM1iUcdC4ILCK0l0BrWk--

--===============7736790212407242566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7736790212407242566==--
