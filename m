Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A64DC69D1DB
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 18:04:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 982B3381565
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 12:04:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676912675; bh=6C3vMjxbNChJ3lfvuAMK/vXZsIBN/TpsfChOMPmpGu0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=c8rrMPpf2Zl7vyo9Imuji4llcS7dbFZkbtQCGGWaqk7TGtWLN6EJQ+3A/0z4XdM0Y
	 FAuJ3HxNWPUar5Pjj+dGI8HlTWeMNZ9fphYSBP5L80UvJLDNge5EljHhMCQ+Hq0xdF
	 8eaaE/Mjb2q8Yxx28Uf78NEDVMVfnGTptUs6FYKhr+Ap6BCV0ipYZG0UPg1dqrfmng
	 oYqr0muMsVxUatJ5WKxyBs2NjmWtkU5AVuGvGKHtgy5Rg/rXVV1iiQFweIr1RrlE7N
	 86jVKtp8+77ss3xX7t//wgSNgG1yLAL8nbna2t5CQD3yRjLm4GatYD1a7Kj0HbYNa/
	 VD5weTt8qMKqA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BF503800B4
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 12:03:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Epu7LGlu";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id fp16so1281653qtb.10
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 09:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7p46NVnpFmjz17Kt7/MHM3BNqLgw0ThZ1f0Wym1gYo8=;
        b=Epu7LGlu0PBfdH6Fa5qyn/iR1A9yN8xvSYIifFsyzigp+oeiiAhJmtmRVZiBMm5l4e
         EDJfi/iHL9ShbWLA0LY5PkzdMKwyUMAreaNupRg3Kj2cfxr3W5PvnaTRcvpp1KZgsOww
         42WBizXIyvoewlwucYPAy160+1ZLf+/yZqzxVAYLlkYHn00StRaroqLNb28YR6FSOlqp
         0uNONMotBcqYTFpzTVl72DsG3p669n12LeMEDYY1H81E5EAvETb5RnWuOytUkl4c1RMH
         JRPKiPaQocEvZSDKgnaf8zegohRG3cOBtsj1bNfHre/+rCAlN74rOFSU12AY90qhBhbg
         9S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7p46NVnpFmjz17Kt7/MHM3BNqLgw0ThZ1f0Wym1gYo8=;
        b=Rbh6qmzAPf2Gi1044+ScLO1DfOODpU667+5P9p1K/dcrCx0HzrIqlcuU4kk6a055D6
         RnPhaNQDqtyLvz2vtdW4dNfVfPVtzEejlGMw3SkWbSlLO611Xm5ZxT6dfLggC8WnSrvd
         g6eoo98wjTbEL6uLSslbdNUs2TPMRq3k43T2iokEBgpoROTnjiuXFDz90qcVeUv0jwnV
         UHJFQWWK7mQl8zpvhnALg1O2U4EKo+/Goku46H47nFfYGPwif1SJa60nEFh3LrVM6IgC
         vThgVWJTGh43rKpY+966bfzT1ELlKJ+nPtTpPOom48LBH6qPs+D6qOvZS4d3tXXCF2l5
         68Ww==
X-Gm-Message-State: AO0yUKXSfDS9FPGwV1gDttWonzjKGxRvvDMinj8cJMy9gB8PQfOE0C1O
	EDq+fUojPwI77TE14HxOGK306LHQUIQ=
X-Google-Smtp-Source: AK7set+j/Ul45R0uvRFsbtRui7OBvsB0ZBaWUT83fpc7W1F7XifrWP2SArOyiVUsuGOMrNIm9jI/CQ==
X-Received: by 2002:ac8:7f47:0:b0:3b9:b112:e86b with SMTP id g7-20020ac87f47000000b003b9b112e86bmr2128436qtk.13.1676912610457;
        Mon, 20 Feb 2023 09:03:30 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 203-20020a3708d4000000b0071de2b6d439sm650193qki.49.2023.02.20.09.03.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 09:03:30 -0800 (PST)
Message-ID: <c5813fab-ef1e-2b8e-fdc0-da7a6755cabd@gmail.com>
Date: Mon, 20 Feb 2023 12:03:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com>
Message-ID-Hash: QFDHUNRICMOZODIKKFUZWQSXPVKIQ674
X-Message-ID-Hash: QFDHUNRICMOZODIKKFUZWQSXPVKIQ674
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QFDHUNRICMOZODIKKFUZWQSXPVKIQ674/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0272820178615603878=="

This is a multi-part message in MIME format.
--===============0272820178615603878==
Content-Type: multipart/alternative;
 boundary="------------UXNGbVPcJJ0WUWUEgIwKc0IP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UXNGbVPcJJ0WUWUEgIwKc0IP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/02/2023 11:38, jmaloyan@umass.edu wrote:
>
> Hello,
>
>
> I still run into the same issue, even after I have changed to parameters.
>
> |/usr/local/lib/uhd/examples/benchmark_rate --args 
> "type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6" 
> --duration 60 --channels 0 --rx_rate 31.25e6 --rx_subdev "A:0" 
> --tx_rate 31.25e6 --tx_subdev "A:0"|
>
> And the error is here
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.3.0.HEAD-0-g1f8fd345|
>
> |[00:00:00.000229] Creating the usrp device with: 
> type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6...|
>
> |[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.10.2,master_clock_rate=200e6|
>
> |[INFO] [MPM.PeriphManager] init() called with device args 
> `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.|
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
> `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'|
>
> |[INFO] [MPM.Rhodium-1] init() called with args 
> `fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'|
>
> |Error: RuntimeError: Failure to create rfnoc_graph.|
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Do you have a compatible system image on the N320--a UHD 4.3 image?


--------------UXNGbVPcJJ0WUWUEgIwKc0IP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 20/02/2023 11:38, <a class="moz-txt-link-abbreviated" href="mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:cWrFZZuBha6s6hWLr8CLyxmJfSZWG9CSqvKMMFh9w@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hello,</p>
      <p><br>
      </p>
      <p>I still run into the same issue, even after I have changed to
        parameters.</p>
      <p><code>/usr/local/lib/uhd/examples/benchmark_rate --args
"type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6"
          --duration 60 --channels 0 --rx_rate 31.25e6 --rx_subdev "A:0"
          --tx_rate 31.25e6 --tx_subdev "A:0"</code></p>
      <p>And the error is here</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.3.0.HEAD-0-g1f8fd345</code></p>
      <p><code>[00:00:00.000229] Creating the usrp device with:
type=n3xx,mgmt_addr=192.168.1.151,addr=192.168.10.2,master_clock_rate=200e6...</code></p>
      <p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with
          args:
mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.10.2,master_clock_rate=200e6</code></p>
      <p><code>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] IO Error during GSM
          initialization. EnvironmentError: IOError: Timed out getting
          recv buff for management transaction</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] Caught exception while
          initializing graph: EnvironmentError: IOError: Timed out
          getting recv buff for management transaction</code></p>
      <p><code>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'</code></p>
      <p><code>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=XG,master_clock_rate=200e6,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'</code></p>
      <p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code></p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Do you have a compatible system image on the N320--a UHD 4.3 image?<br>
    <br>
    <br>
  </body>
</html>

--------------UXNGbVPcJJ0WUWUEgIwKc0IP--

--===============0272820178615603878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0272820178615603878==--
