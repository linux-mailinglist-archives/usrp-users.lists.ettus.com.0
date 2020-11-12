Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 677A22B0CF7
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:49:24 +0100 (CET)
Received: from [::1] (port=60066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHes-0001I3-L0; Thu, 12 Nov 2020 13:49:22 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:36784)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kdHep-00019Y-3x
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:49:19 -0500
Received: by mail-qk1-f180.google.com with SMTP id r7so6324339qkf.3
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 10:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=0cA/BnYLU7dG60tMCWk/tPNZyAqtxtH1huUltkEwFps=;
 b=In5B6KZnYPGPlP9/Fxy5Zu4h5EeXbCm78NH9AWVvf6WZ/CuFK/ySA/TFF2taj5Nxsv
 YV5uha4H8tzWQFg02YG8e026OPnlJw1Mte0dSiiveIXg+lydA8RvLmTCicjwAEnPRTeM
 I5WVIhh/8+PGpEpWiZF0jdB8/C1bR3DgH84+3zK1msIZrYwotbplMx1fJxjHzGbB1T4+
 dCkD6HuRnttlP0UfoGrT2WL0YaSmQ2e+GFyi6ICC6r1HUMhYSPTHHFd/Eui0/CamDr3E
 xHzRZj9fUH7B5GtdjJLxuPdIQ8dMfeNk2eF/CkjBrKE8nYnacxJ/XaECuO81+9F9tM0t
 OS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=0cA/BnYLU7dG60tMCWk/tPNZyAqtxtH1huUltkEwFps=;
 b=Uh2nvylTUrz7LbaOIuL1xCpHrDy8GfrjsQs1iD4Gy+N29Ip8UW+nCkosMI2BcnC84O
 2MczVL/oAnKbSaKBLRtVwrFDQFC3EsvEwWesbQhkKBSvTMy/RJSVLti1rQoV25PMZer7
 53JMuPjyUcURE6/nGaSVDj2HXa/od7G9FBczt8/S/LPWb95CL9Sn6SHsxXOx1PIGyKpH
 2ItZzNv4G63XIIOj20/dQjuxISanehhkuTpqKeGPvPEdTKoH1ZG+4AFPVXRVBwVOEsoy
 TvHRo0IKyGmRK2EZLYAj1HRDO3SmK6oMy31z79ETpRwN/He1QA8Nhsn98XeMd1ZDtz2/
 XpWA==
X-Gm-Message-State: AOAM531yA/uMPhqk5KI4bxuw1vLt7O83crQVymfLydHIGPGL4f/R4AAt
 4B+P9bnAdUnAabdM35SEEMOHrDb7aSw=
X-Google-Smtp-Source: ABdhPJwXoRS4COAPzQOtPj25NQVjtv3HTvFhnTroEDWnNnj+SeBXGfNaKsFvl1hotz+XjQ+L0EH/mA==
X-Received: by 2002:a05:620a:15db:: with SMTP id
 o27mr1152997qkm.21.1605206918444; 
 Thu, 12 Nov 2020 10:48:38 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 131sm5339582qkh.115.2020.11.12.10.48.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Nov 2020 10:48:38 -0800 (PST)
Message-ID: <5FAD8385.8030605@gmail.com>
Date: Thu, 12 Nov 2020 13:48:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
In-Reply-To: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
Subject: Re: [USRP-users] Rx time sychoronization
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
Content-Type: multipart/mixed; boundary="===============7558636206321211980=="
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
--===============7558636206321211980==
Content-Type: multipart/alternative;
 boundary="------------040209080307020408050106"

This is a multi-part message in MIME format.
--------------040209080307020408050106
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2020 01:40 PM, Xiang Ma via USRP-users wrote:
> Hi,
>
> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>
> I want to use this as two receivers by the two RX in the two 
> daugherboards respectively, and receive the signal at the same time. 
> Do I have to synchronize them or they will automatically start to 
> receive the signal at the same time?
>
> Thank you,
>
> Xiang Ma
>
>
> -- 
> /*Xiang Ma, */Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>
>
If you have both streams in the same multi_usrp object, they will be 
time-synchronized automatically.

This note will likely be useul:

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices




--------------040209080307020408050106
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/12/2020 01:40 PM, Xiang Ma via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I have a USRP x310 with 2 UBX daughterboards and GPSDO.</div>
        <div><br>
        </div>
        <div>I want to use this as two receivers by the two RX in the
          two daugherboards respectively, and receive the signal at the
          same time. Do I have to synchronize them or they will
          automatically start to receive the signal at the same time?</div>
        <div><br>
        </div>
        <div>Thank you,</div>
        <div><br>
        </div>
        <div>Xiang Ma</div>
        <div><br clear="all">
          <div><br>
          </div>
          -- <br>
          <div dir="ltr" class="gmail_signature"
            data-smartmail="gmail_signature">
            <div dir="ltr"><font style="color:rgb(136,136,136)"
                face="times new roman, serif" size="4"><i><b>Xiang Ma, </b></i></font><span
                style="color:rgb(136,136,136)">Ph.D. Student</span>
              <div>
                <div style="color:rgb(136,136,136)"><font
                    color="#444444">College of Engineering</font></div>
                <div><font color="#444444">Utah State University</font></div>
                <div style="color:rgb(136,136,136)"><font
                    color="#444444">E-mail:<a moz-do-not-send="true"
                      href="mailto:congshanya@gmail.com"
                      style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    If you have both streams in the same multi_usrp object, they will be
    time-synchronized automatically.<br>
    <br>
    This note will likely be useul:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040209080307020408050106--


--===============7558636206321211980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7558636206321211980==--

