Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 218E319C73D
	for <lists+usrp-users@lfdr.de>; Thu,  2 Apr 2020 18:40:24 +0200 (CEST)
Received: from [::1] (port=37064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jK2t5-0004hv-7q; Thu, 02 Apr 2020 12:40:15 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:39619)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jK2t1-0004bW-Fm
 for usrp-users@lists.ettus.com; Thu, 02 Apr 2020 12:40:11 -0400
Received: by mail-qt1-f171.google.com with SMTP id f20so3833246qtq.6
 for <usrp-users@lists.ettus.com>; Thu, 02 Apr 2020 09:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=71qjQTgEUu/JGwYOxO95uvvOeHUKRGvKnWZvTuqhoOI=;
 b=J6b1MvKL1BZxZfjxJg749mce9v9686qXDmpmffbBc2WFtTtEQsObQPPCYKX3EM/1AG
 acWKlqoAsbzsKRTIpOIe/Zpn1WeS5nX585dL9QhlFfpgMqYi7Kd1HGPlLhco397qMq/W
 h1T47YzVuUsjqtPR+2fwU2LkbRQdsvpR3m7EeuglHX4/qwl4XgslAC2ygvgVIrMvRadL
 1fIVwjmGHRhJ09CwJGHd4+AENTg/sNNmHNh3nbWERHjaE3MFPrEw29ApbuvIZeIXb2ET
 a53Wg/b2T7hR9pP0a3s40zoqz0wR75I3pVzmHCN5/ZZHVSEh5UZWRHcgrybNPe4JG0qe
 pCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=71qjQTgEUu/JGwYOxO95uvvOeHUKRGvKnWZvTuqhoOI=;
 b=R+mXFqYaYtXpYW5eMOPzOJb2vG/fdNT7Jb1NHES/VxiwXZrBeUsDLL8xCHSp3sSTrh
 2JyvPETYorY2l79fbcd9yzj0342ek9sY7MKesvoQDWmkIqwdSlHKOPRtRVqs7FSb+XVo
 bUMDsKQ70Gfw8ix1O0IkhfDgkvoz/HYnwI2KblJHA5lmysTHiECVsjp+tPnJSI3qmtTm
 1f+BSmSvGAG1yz2ZSUymY1DpCLw+zyxvbg8GiSQld6WujXE35g9mzXVT1qNuTGNW3QEH
 iPsj4rc4eT1GyUE35MYpehhgmaI6UJTKp0s+tkgptmgWPSKYtm91bx9p2LgnYgkQ97y7
 UBGA==
X-Gm-Message-State: AGi0PuZvzX+UtX/CUXx5gaBIuNd84sGhb20AJfIHMBgl7oMyAPfpbmZq
 iwrm/iznf/4h1UXJyhPolSVLgbf6
X-Google-Smtp-Source: APiQypJkRzup2xEurGFbEMacel9dU0pPeeONldWzx86phMdV9pjZmUgmRN3z+aNmbHAO8h/HGxREhQ==
X-Received: by 2002:aed:3c4b:: with SMTP id u11mr3862172qte.208.1585845570675; 
 Thu, 02 Apr 2020 09:39:30 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id x9sm4038167qtk.7.2020.04.02.09.39.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 09:39:29 -0700 (PDT)
Message-ID: <5E861541.2070708@gmail.com>
Date: Thu, 02 Apr 2020 12:39:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com>
In-Reply-To: <CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com>
Subject: Re: [USRP-users] B210 configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1514814663920781619=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============1514814663920781619==
Content-Type: multipart/alternative;
 boundary="------------060109000707020406000408"

This is a multi-part message in MIME format.
--------------060109000707020406000408
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/02/2020 03:41 AM, fe8769 via USRP-users wrote:
> Hello
>
> I try to configure channel 1 on B210 with osmocom_fft but I can't 
> access to it
>
> the cmd :
>
> SoapySDRUtil --probe="driver=uhd,type=b200"
>
> shows :
>
>  rx0_antenna=RX2
>   rx0_id=Unknown (0xffff)
>   rx0_serial=
>   rx0_subdev_name=FE-RX2
>   rx0_subdev_spec=A:A A:B
>   rx1_antenna=RX2
>   rx1_id=Unknown (0xffff)
>   rx1_serial=
>   rx1_subdev_name=FE-RX1
>   rx1_subdev_spec=A:A A:B
>   tx0_antenna=TX/RX
>   tx0_id=Unknown (0xffff)
>   tx0_serial=
>   tx0_subdev_name=FE-TX2
>   tx0_subdev_spec=A:A A:B
>   tx1_antenna=TX/RX
>   tx1_id=Unknown (0xffff)
>   tx1_serial=
>   tx1_subdev_name=FE-TX1
>   tx1_subdev_spec=A:A A:B
>
> these 2 lines are working fine
>
> SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=0 --direction=RX
> SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=1 --direction=RX
>
> Trying all these lines are always addressing channel 0
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -v
>
> osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A TX/RX
>
> osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M -A RX2
>
> osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -A FE-RX2
>
> osmocom_fft -a uhd,subdev=FE-RX2 -s 1000000 -g 40 -f 392M -A RX2
>
> osmocom_fft -a uhd,"nchan=FE-TX1","subdev=A:A A:B" -s 1000000 -g 40 -f 
> 392M -A TX/RX
>
>
> What is the exact usage of osmocom_fft to access channel 1 ? or the 
> exact usage of soapy driver ?
>
> Thanks for answer
>
>
> -- 
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
For osmosdr applications:


uhd,type=b200,nchan=1,subdev=A:A        gives you the first channel
uhd,type=b200,nchan=1,subdev=A:B        gives you the second channel



--------------060109000707020406000408
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/02/2020 03:41 AM, fe8769 via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CA+5Ly01=7x-ryDNRW_TZqrBP9buQpgyG4+vdmbZ2ZbA27oKsww@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hello</div>
        <div><br>
        </div>
        <div>I try to configure channel 1 on B210 with osmocom_fft but I
          can't access to it</div>
        <div><br>
        </div>
        <div>the cmd :</div>
        <div><br>
        </div>
        <div>SoapySDRUtil --probe="driver=uhd,type=b200" <br>
        </div>
        <div><br>
        </div>
        <div>shows :</div>
        <div><br>
        </div>
        <div> rx0_antenna=RX2<br>
            rx0_id=Unknown (0xffff)<br>
            rx0_serial=<br>
            rx0_subdev_name=FE-RX2<br>
            rx0_subdev_spec=A:A A:B<br>
            rx1_antenna=RX2<br>
            rx1_id=Unknown (0xffff)<br>
            rx1_serial=<br>
            rx1_subdev_name=FE-RX1<br>
            rx1_subdev_spec=A:A A:B<br>
            tx0_antenna=TX/RX<br>
            tx0_id=Unknown (0xffff)<br>
            tx0_serial=<br>
            tx0_subdev_name=FE-TX2<br>
            tx0_subdev_spec=A:A A:B<br>
            tx1_antenna=TX/RX<br>
            tx1_id=Unknown (0xffff)<br>
            tx1_serial=<br>
            tx1_subdev_name=FE-TX1<br>
            tx1_subdev_spec=A:A A:B</div>
        <div><br>
        </div>
        <div>these 2 lines are working fine <br>
        </div>
        <div><br>
        </div>
        <div>SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=0
          --direction=RX</div>
        <div>SoapySDRUtil --args="driver=uhd" --rate=10e6 --channels=1
          --direction=RX</div>
        <div><br>
        </div>
        <div>Trying all these lines are always addressing channel 0</div>
        <div><br>
        </div>
        <div>osmocom_fft -a uhd -s 1000000 -g 40 -f 392M <br>
          <br>
          osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -v<br>
          <br>
          osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M
          -A TX/RX<br>
          <br>
          osmocom_fft -a uhd,nchan=0,subdev=A:B -s 1000000 -g 40 -f 392M
          -A RX2<br>
          <br>
          osmocom_fft -a uhd -s 1000000 -g 40 -f 392M -A FE-RX2<br>
          <br>
          osmocom_fft -a uhd,subdev=FE-RX2 -s 1000000 -g 40 -f 392M -A
          RX2<br>
          <br>
          osmocom_fft -a uhd,"nchan=FE-TX1","subdev=A:A A:B" -s 1000000
          -g 40 -f 392M -A TX/RX</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>What is the exact usage of osmocom_fft to access channel 1
          ? or the exact usage of soapy driver ?<br>
        </div>
        <div><br>
        </div>
        <div>Thanks for answer<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>-- <br>
          <div dir="ltr" class="gmail_signature"
            data-smartmail="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr">
                  <div><img moz-do-not-send="true"
src="https://docs.google.com/uc?id=0B1OSZ13OuYs5YkhObWxySTJ6VmM&amp;export=download"
                      height="96" width="79"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    For osmosdr applications:<br>
    <br>
    <br>
    uhd,type=b200,nchan=1,subdev=A:A        gives you the first channel<br>
    uhd,type=b200,nchan=1,subdev=A:B        gives you the second channel<br>
    <br>
    <br>
  </body>
</html>

--------------060109000707020406000408--


--===============1514814663920781619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1514814663920781619==--

