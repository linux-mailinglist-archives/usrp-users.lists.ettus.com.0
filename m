Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D7E27B74D
	for <lists+usrp-users@lfdr.de>; Mon, 28 Sep 2020 23:45:00 +0200 (CEST)
Received: from [::1] (port=40418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kN0x9-0005wV-RW; Mon, 28 Sep 2020 17:44:59 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:36323)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kN0x6-0005n5-Iq
 for usrp-users@lists.ettus.com; Mon, 28 Sep 2020 17:44:56 -0400
Received: by mail-qv1-f41.google.com with SMTP id f11so1285809qvw.3
 for <usrp-users@lists.ettus.com>; Mon, 28 Sep 2020 14:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=aZNu/C8zgs1EjB5vpcJW7PmDluoDDciLO6jfKbqhEIA=;
 b=T+TvZ1EMff1AHq/HoG/62bBhquORElChXIO5kC03qjuYSmYMq+4bS3JPLdp/gqoW2i
 ITz1qDtK20pr1G5IeRA9jSXBYsnM2eh8kfWKracHmSy3BQzHHV1InYkRj09Ah4Lb1Lvc
 OL+/BEY+q6/kRBx/V+hOJqvWQloxcHgblMkv6xsPCAW2Kws9EEJhJW9GIztRhum8/maJ
 vL4TJzLRiWKLPYAhOrOfszNIb1RYHRIx7sWynGvLkwHceCh54en+qPeu3S8vWvA1S6Wc
 LE+WlzwLpS9HUw6oFR8oparIoePnbSLu/udruHz+Eup1Qxp/4f8Q5M50F6Sk9Sx/6ryk
 5G7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=aZNu/C8zgs1EjB5vpcJW7PmDluoDDciLO6jfKbqhEIA=;
 b=Rb72wZNrGhZHAVplYDnpV6luF4gJh6WIYM2O52latQLOB+KzsXLTnOqnngzCTQyMuD
 W5QZzMI21iZC39CpBLS+ejIy2iFNU4LxSh69uvEp09xT/byHyqdmzIfUgggiUELJ6Gs9
 YOzHK7AlZB9vJXHXMpRCFRbb2FGUscfWgf4IKAkH3mR6dFh74layowZdZdIfY13Q3Hx5
 U5SF05UGuznSbdnW1cu1pRTAeZJD1kypo6CxPtouc32+g8aglf321kvY6akZDEDZn1AD
 g+yVzoG9FheB2wD/vfF7V0r+2p4qJCSBrpYgwbU869WMjsjp+2AA1OsZenP64VHYJNv6
 gC5g==
X-Gm-Message-State: AOAM533RmCKxl/rNb0JG+GC4ZvwV87Z0VSzdIB/XnRxy6A2jPlTFP22V
 uBPNOBowMY0EaDctWBC8dvb1Jl5All8NYw==
X-Google-Smtp-Source: ABdhPJx0YFQFykcrGz0mWIVdKmLnT+eHaP/ekWlK2pvSKrRDxmgTGUDP3tocy6h6lUMW0LGgw/NdmQ==
X-Received: by 2002:a0c:f44e:: with SMTP id h14mr1746199qvm.4.1601329455788;
 Mon, 28 Sep 2020 14:44:15 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id l21sm2338429qkl.128.2020.09.28.14.44.15
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Sep 2020 14:44:15 -0700 (PDT)
Message-ID: <5F72592E.9070809@gmail.com>
Date: Mon, 28 Sep 2020 17:44:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.46.1601308803.20957.usrp-users_lists.ettus.com@lists.ettus.com>
 <CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com>
In-Reply-To: <CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com>
Subject: Re: [USRP-users] Segmentation fault when calling
 usrp->get_device()->get_tree()->access<bool>
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
Content-Type: multipart/mixed; boundary="===============5855730104515467042=="
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
--===============5855730104515467042==
Content-Type: multipart/alternative;
 boundary="------------070306080903060305040800"

This is a multi-part message in MIME format.
--------------070306080903060305040800
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/28/2020 05:35 PM, Yu-Hsuan Chen via USRP-users wrote:
>
>
>
> Yes, I can set frequency, rate and gain using usrp object before this 
> call. Only get the fault after making this call.
>
>
Thanks.  I've logged an issue (#385) in the issues database.  I don't 
have an N320/N321 I can test this with myself, so hopefully
   someone in R&D can test this.




--------------070306080903060305040800
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/28/2020 05:35 PM, Yu-Hsuan Chen
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex"><br>
          </blockquote>
          <div><br>
          </div>
          <div>Yes, I can set frequency, rate and gain using usrp object
            before this call. Only get the fault after making this call.</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Thanks.  I've logged an issue (#385) in the issues database.  I
    don't have an N320/N321 I can test this with myself, so hopefully<br>
      someone in R&amp;D can test this.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------070306080903060305040800--


--===============5855730104515467042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5855730104515467042==--

