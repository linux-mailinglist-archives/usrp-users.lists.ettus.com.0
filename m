Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 920DE27D545
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 19:59:02 +0200 (CEST)
Received: from [::1] (port=55018 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNJu1-0003kd-Ha; Tue, 29 Sep 2020 13:59:01 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:43625)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNJtx-0003c6-9o
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 13:58:57 -0400
Received: by mail-qk1-f172.google.com with SMTP id c2so5210074qkf.10
 for <usrp-users@lists.ettus.com>; Tue, 29 Sep 2020 10:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=wqxCgXJhSfdtclLNrRLT8agiFOuJL0zp0GK9KzYO5oU=;
 b=mR4QGhaIbgtn4Qmvs4577d5cyTNqOGxxKL8+3z1EboLImpU4m0PVx6JLBZPKQ5ti/+
 +Yj6J1uBVma5uMTauXUKBT3ZhRC9F63XHssCEl6Sa/fTIpQBI520CvdfeQ4XnbwJM36d
 Ar6UdOC4ftsMasPzxYnsYW7XX5toYZetZN5Vyl0/bOf0+m+CMU2RANaJOs0oazaW6CxL
 hBcDlGrXLDggTmbrrHOTtFjt49pCMdyOUtWL1LDjIT6qHoTvEXkdM9PciN+zAvrS6gJH
 GLklDrnHUqAxUiEYmVx4gkFszc0VeJqZph5OleTIV+sJpQxhg7UWCNUZMSSCdnHbSuLK
 tTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=wqxCgXJhSfdtclLNrRLT8agiFOuJL0zp0GK9KzYO5oU=;
 b=WUEOxK4Qhj51aVD8C4Ga2GxDgpkTvUfoCPOtvbAJdTmyT/P38XJacAFI8IO9WGZqBc
 rIZ6XKg5dAqWolpapij22Qma8TYPAxev8y0L7SQlklp6ODeI4GuHupB438Vp8ZWsvzo2
 8l3WTf2vXP+OEp5LqyYlpdF3wRqn9ZVlw/iSjX+ZRzwpcXRhha0FzOmj9LCWW3kXVri1
 20CuepSY9bNQxQ5Xg6C4vqYM68RkAQeNPVKQQnq0tT2ae9r1NnJ1EDiuEJ3baf8FvPX/
 9rDevhIbnur72Hl8SoFcfYvFMEMrC+PsCwBSf/SYxVPYd7t4ziGE2EOV3aJV4ytRA406
 iV7g==
X-Gm-Message-State: AOAM531GG3fnEOZAIZwLmAhVnc0Gu09jx1SceyyZ25oPNuOX/1rygwip
 xfpjOhE5WGUS27y4CoThpvzJs2cXtAPh9Q==
X-Google-Smtp-Source: ABdhPJwZoum9YmSK5ywmHI/CWROGjmFXxw++AZ61D+nw0jLqwAFNhUOyQ2EYB0Yaercy1uNbHSl3XQ==
X-Received: by 2002:a05:620a:5b8:: with SMTP id
 q24mr5577930qkq.492.1601402296686; 
 Tue, 29 Sep 2020 10:58:16 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id 8sm5451334qkc.100.2020.09.29.10.58.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 10:58:16 -0700 (PDT)
Message-ID: <5F7375B7.60104@gmail.com>
Date: Tue, 29 Sep 2020 13:58:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
 <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] TWINRX Gain
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
Content-Type: multipart/mixed; boundary="===============4597946667416772810=="
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
--===============4597946667416772810==
Content-Type: multipart/alternative;
 boundary="------------070303000508080200040007"

This is a multi-part message in MIME format.
--------------070303000508080200040007
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/29/2020 01:54 PM, Mark Koenig wrote:
> Marcus,
>
> Thank you for the quick response.  In my application I am trying to 
> remove the true gain I am applying to the signal.  So when you refer 
> to control range, moving from 0 to 10, may result in only 5dB of gain, 
> or something to that effect, correct?  When you have that information 
> of the true gain applied, can you pass it along?
>
> Thank you very much.
>
> Mark
> ------------------------------------------------------------------------
>
If you're trying to mathematically remove the gain to estimate actual 
power at the antenna, you aren't doing it right.

You need to use a known calibration source, and build a calibration 
table over your expected operating parameters.

The fact is that actual delivered gain will change with center frequency 
and temperature (although the temperature effects will
   be small).



--------------070303000508080200040007
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/29/2020 01:54 PM, Mark Koenig
      wrote:<br>
    </div>
    <blockquote
cite="mid:DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Marcus,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thank you for the quick response.  In my application I am trying
        to remove the true gain I am applying to the signal.  So when
        you refer to control range, moving from 0 to 10, may result in
        only 5dB of gain, or something to that effect, correct?  When
        you have that information of the true gain applied, can you pass
        it along?</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thank you very much.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Mark</div>
      <hr style="display:inline-block;width:98%" tabindex="-1"><br>
    </blockquote>
    If you're trying to mathematically remove the gain to estimate
    actual power at the antenna, you aren't doing it right.<br>
    <br>
    You need to use a known calibration source, and build a calibration
    table over your expected operating parameters.<br>
    <br>
    The fact is that actual delivered gain will change with center
    frequency and temperature (although the temperature effects will<br>
      be small).<br>
    <br>
    <br>
  </body>
</html>

--------------070303000508080200040007--


--===============4597946667416772810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4597946667416772810==--

