Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A7E2414CA
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 04:06:26 +0200 (CEST)
Received: from [::1] (port=41888 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5JgG-00077X-JG; Mon, 10 Aug 2020 22:06:24 -0400
Received: from mail-qv1-f52.google.com ([209.85.219.52]:36236)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5JgC-00070x-KR
 for usrp-users@lists.ettus.com; Mon, 10 Aug 2020 22:06:20 -0400
Received: by mail-qv1-f52.google.com with SMTP id a19so5276913qvy.3
 for <usrp-users@lists.ettus.com>; Mon, 10 Aug 2020 19:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=27b946gSXCEJFPxHwesULydk85ZD61ibieaXjCUGdHM=;
 b=gB+ulFcxfCQXUgkCgtksVOQjuhs5PBzniabkrvZmI82pBLW6qoFEL91vk5qiCSbJX1
 U9IfhvxS8sVNyhR6MnZC0IcOI+tGtmHV255SShddOV4wHZvX3oMVXzKFRNBpZdUwqD4D
 YWi0KRsN2TD5gBFBkU4xQgI/VgFjxVgUYejycPsJt7yHetMNCWRMoAUeWeSor2fHWvOF
 fxrJwkl/IwpTHYY7nmCALu6lDYbt0bH55wyGGyBDanntf+PJaq9sZZTekejcuqteS5ZJ
 uM9o0CtlzUk5TrRrRO+HjK1nG8pMpoD5Go/w55HcBHO+vuaelPlGa/YmLwfYmumV9IBq
 xw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=27b946gSXCEJFPxHwesULydk85ZD61ibieaXjCUGdHM=;
 b=szB7iwdxeW75u9OumJ33B3DPjNpEZtTkY1drVSQmyv0WQZWxc9Jy/JmgMP/aUtusg6
 yaL1tgjEzSimD7oKiPiBxn4jXQmB9iBptYkEcBfYpxlapo6D/w1tJqOx2W+QHPTLBXMf
 7f0QP8E3r7u5ZYBU+j6TZcCP+rT3ygbqE0N8haDkKQ2bo5OfH/D9Yxqf0JKQeRbbiaRb
 6YWS1YbMD8vowmMaX4Z8N6JTo9rrZ9wZDags8U3eJncDiLpWZkcR+fJ5NUchJGBic91p
 vwRZ9oIHOilM/XnXb0hmY3dkdrK9g4XjdRGokfhL/LwisdsWjzIYo3hV7nh8gAi37uvq
 ppNA==
X-Gm-Message-State: AOAM530D62yS7YIJ2GhXX5+VNluXX3+5+GmwOD7x/dTnWdvzmKkBStfF
 BMP5J5tf/OCEdUp52VbjZo3Vg50DaKw=
X-Google-Smtp-Source: ABdhPJxZVnh5R9HA3SIUhD38gdSeYSkcMJbpCg4E16Js0mWC6++bxp8ii3w3CDFwssbECLcl9fP5Nw==
X-Received: by 2002:a0c:e90b:: with SMTP id a11mr31386102qvo.168.1597111539853; 
 Mon, 10 Aug 2020 19:05:39 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x5sm17131150qtp.76.2020.08.10.19.05.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Aug 2020 19:05:39 -0700 (PDT)
Message-ID: <5F31FCF3.9000505@gmail.com>
Date: Mon, 10 Aug 2020 22:05:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+fwWkznupY1U19V2hemTBkwNx6nmEBPKUa=Es7udqd-t8=6YQ@mail.gmail.com>
In-Reply-To: <CA+fwWkznupY1U19V2hemTBkwNx6nmEBPKUa=Es7udqd-t8=6YQ@mail.gmail.com>
Subject: Re: [USRP-users] PDU socket block
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============5808522006769517506=="
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
--===============5808522006769517506==
Content-Type: multipart/alternative;
 boundary="------------060304040804010702000103"

This is a multi-part message in MIME format.
--------------060304040804010702000103
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2020 10:00 PM, Felipe Gama via USRP-users wrote:
> I'm developing my doctoral research on wavelet coding and I'm trying 
> to automate the experimental tests developed from the developed codes, 
> I made a python script from a TCP client that sends it to a TCP server 
> created by the socket block PDU, however at the reception of this 
> client I'm not able to handle the data received because I don't know 
> which format the PDU socket sends and I didn't find it in the 
> documentation. Sending to the PDU socket the output of the block 
> created by me, which is of the complex message type. Attached is the 
> client in python, flowchart code and the client output.
>
>
> Thankful,
>
> Me. Eng. Felipe Gama
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You'll probably get a better response from the discuss-gnuradio mailing 
list rather than here.



--------------060304040804010702000103
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/10/2020 10:00 PM, Felipe Gama via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CA+fwWkznupY1U19V2hemTBkwNx6nmEBPKUa=Es7udqd-t8=6YQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div>I'm developing my doctoral research on wavelet coding and
            I'm trying to automate the experimental tests developed from
            the developed codes, I made a python script from a TCP
            client that sends it to a TCP server created by the socket
            block PDU, however at the reception of this client I'm not
            able to handle the data received because I don't know which
            format the PDU socket sends and I didn't find it in the
            documentation. Sending to the PDU socket the output of the
            block created by me, which is of the complex message type.
            Attached is the client in python, flowchart code and the
            client output.</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Thankful,</div>
          <div><br>
          </div>
          <div>Me. Eng. Felipe Gama</div>
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
    You'll probably get a better response from the discuss-gnuradio
    mailing list rather than here.<br>
    <br>
    <br>
  </body>
</html>

--------------060304040804010702000103--


--===============5808522006769517506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5808522006769517506==--

