Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC2E69C46B
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 04:16:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDE21383E46
	for <lists+usrp-users@lfdr.de>; Sun, 19 Feb 2023 22:16:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676862982; bh=5coNn6ISWaL05p86hY09a2s1BKm7YH43UBS2chIuH2I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y9HSF7JCDdB0FClcE0AX9mViIc1jUVCVHkD4+bO+sNivUMQPvE1dHL/xPbdCWlIFt
	 Qm3rwWfRt7plXIJRMkPyG9YtnirmL1bP3ePQ/8vAJEy8aPzR/Hxpes8BsN/an9zeD8
	 Fa8IBOlDFjN6WfDXdZ005oKRiLPxyvsMwKvT6ep98R5iTbH2dzfaZcM+7fDFlCcSnC
	 PKOFto44b9h6P4zsYtIOConU/Sy6eABZBH52kLcO1q+xkCThGYEWef+Qn9Q9Dxz0eD
	 ro44yXwHDTODNZbxwee3cybbSedABg8zzayMon27FyfqDxDDgtrUm5ACOSwxxeqsfE
	 RDxVDRIx6V9ZA==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 38EF63818C8
	for <usrp-users@lists.ettus.com>; Sun, 19 Feb 2023 22:15:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k211GVYM";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id x1so663114qtw.3
        for <usrp-users@lists.ettus.com>; Sun, 19 Feb 2023 19:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvP84sXorGduLFA0zAmOGJHeBwQOEoN0M5b1b/qPeuU=;
        b=k211GVYMIctrZU+/k2vSW8HnmQDoLE4nyZV27BB8/GpSjqPQ4pcTmlz4sKimEK39h9
         pvfegXNStlmxLLv9GYiMk7npbo0uAu6F2VqyYBMSm34cmqy3N2he0+9LPR8jBDhiRDF5
         E8X/dYJW3TMquX4P9EL8Y4DdudGuKOFwnbYlbpPse1aLy2F0sb2brhGH7cGv0B9Hri8H
         ZxBCmTk+n6Fjp9nfMDLmAWOeeIHR8jcynV8wKZNk5dPHXrPBEuiepr4O0cmSxLdVtUtm
         qyD4h2BDA72+rsCvgbyQ9yrUuajkmBWt8HUyqh+X9LNI/rAacqWGPOnJFlA2jfQKcA/d
         lv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NvP84sXorGduLFA0zAmOGJHeBwQOEoN0M5b1b/qPeuU=;
        b=78T3m+SO07TpK/QYnOYBgYiVcKMl0aTtTna9zEbxPGfjfazs/ueyuYMbqzKEx0/BtA
         VtRH5PYMz6n7Me10Uu10T6z48JgduNC6QIOYD/n4bTIuoHbpEPK9gy2zxonY15MOk48U
         Hl366n2Xg5D7ZDJE+cnMPk9Q2pEjC99GdQpWEcymbEY3bdR7SORWDT7nyfxi69xUSUvM
         3YFH+1soUGYXTFXRO8kJY+omIAMsw/sQhrNAZIpnlZsPuinW4+5kkRcFqxrt4k/oRsr+
         wu/yjrfurzxXmCQ8w0zzpRszzNm+CbdzO3s8FHWpyWuY+S8XotqyfAam7ibOCx+9LWEK
         rtug==
X-Gm-Message-State: AO0yUKXi2pMNOadadIFRtZWUdRBp0teq/2anKOwLw+JO4Jltl9G1/cm8
	VqZ2ZGTt7yzT4CgCZcGl4gBgmQZ1JEM=
X-Google-Smtp-Source: AK7set+8qkcsDpOwilSHyOxOHh+L9ZeOOFFOLII3he0JfdFH1zVwL/hVhry4dzeJiqmqLh+S9kFJGQ==
X-Received: by 2002:ac8:5dd1:0:b0:3bd:c4b:3a2e with SMTP id e17-20020ac85dd1000000b003bd0c4b3a2emr19506098qtx.12.1676862937314;
        Sun, 19 Feb 2023 19:15:37 -0800 (PST)
Received: from [192.168.2.165] ([184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id j3-20020ac84403000000b003b835e7e283sm8035635qtn.44.2023.02.19.19.15.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 19:15:36 -0800 (PST)
Message-ID: <7a42268e-4247-650f-90c8-24051bd3efcc@gmail.com>
Date: Sun, 19 Feb 2023 22:15:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw@lists.ettus.com>
Message-ID-Hash: SWPPIUYJNEZVRBAYYOIWFBBTYHVVRNMJ
X-Message-ID-Hash: SWPPIUYJNEZVRBAYYOIWFBBTYHVVRNMJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWPPIUYJNEZVRBAYYOIWFBBTYHVVRNMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4309127883860138922=="

This is a multi-part message in MIME format.
--===============4309127883860138922==
Content-Type: multipart/alternative;
 boundary="------------lmcQNM5atTtzQViUxIL1ppEs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lmcQNM5atTtzQViUxIL1ppEs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/02/2023 22:08, jmaloyan@umass.edu wrote:
>
> Hello,
>
>
> I am currently trying to run benchmark_rate, however, I am getting an 
> error when I do.
>
> |/usr/local/lib/uhd/examples/benchmark_rate --args 
> "type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=245.76e6" 
> --duration 60 --channels "0,1,2,3" --rx_rate 30.72e6 --rx_subdev "A:0 
> B:0" --tx_rate 30.72e6 --tx_subdev "A:0 B:0"|
>
>
> And the error is this
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.3.0.HEAD-0-g1f8fd345|
>
> |[00:00:00.000224] Creating the usrp device with: 
> type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=245.76e6...|
>
> |[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.10.2,master_clock_rate=245.76e6|
>
> |[INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.|
>
> |[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
> EnvironmentError: IOError: Timed out getting recv buff for management 
> transaction|
>
> |[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
> EnvironmentError: IOError: Timed out getting recv buff for management 
> transaction|
>
> |[INFO] [MPM.Rhodium-0] init() called with args 
> `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'|
>
> |[INFO] [MPM.Rhodium-1] init() called with args 
> `fpga=XG,master_clock_rate=245.76e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'|
>
> |Error: RuntimeError: Failure to create rfnoc_graph.|
>
> I have not got this error in the past. I am wondering if anyone has 
> come across this issue as well. My MTU is 9000.
>
> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I don't have an N320, but this is a two-channel device, and you're 
specifying --channels "0,1,2,3"
--------------lmcQNM5atTtzQViUxIL1ppEs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/02/2023 22:08, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:wAjq7Nnr5Xt3hHsslMTqR5OUG3QjyXqj5ZBqG1pCtw@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I am currently trying to run benchmark_rate, however, I am
        getting an error when I do.</p>
      <p><code>/usr/local/lib/uhd/examples/benchmark_rate --args
"type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock_r=
ate=3D245.76e6"
          --duration 60 --channels "0,1,2,3" --rx_rate 30.72e6
          --rx_subdev "A:0 B:0" --tx_rate 30.72e6 --tx_subdev "A:0 B:0"</=
code></p>
      <p><br>
      </p>
      <p>And the error is this</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.3.0.HEAD-0-g1f8fd345</code></p>
      <p><code>[00:00:00.000224] Creating the usrp device with:
type=3Dn3xx,mgmt_addr=3D192.168.1.151,addr=3D192.168.10.2,master_clock_ra=
te=3D245.76e6...</code></p>
      <p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with
          args:
mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,nam=
e=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.10.2,master_=
clock_rate=3D245.76e6</code></p>
      <p><code>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3D=
ni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinte=
rnal'.</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM
          initialization. EnvironmentError: IOError: Timed out getting
          recv buff for management transaction</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] Caught exception while
          initializing graph: EnvironmentError: IOError: Timed out
          getting recv buff for management transaction</code></p>
      <p><code>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=3DXG,master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3D=
ni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinte=
rnal'</code></p>
      <p><code>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=3DXG,master_clock_rate=3D245.76e6,mgmt_addr=3D192.168.1.151,name=3D=
ni-n3xx-3255102,product=3Dn320,clock_source=3Dinternal,time_source=3Dinte=
rnal'</code></p>
      <p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code>=
</p>
      <p>I have not got this error in the past. I am wondering if anyone
        has come across this issue as well. My MTU is 9000.</p>
      <p>Thanks,</p>
      <p>Joe</p>
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
    I don't have an N320, but this is a two-channel device, and you're
    specifying --channels "0,1,2,3"=C2=A0=C2=A0 <br>
  </body>
</html>

--------------lmcQNM5atTtzQViUxIL1ppEs--

--===============4309127883860138922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4309127883860138922==--
