Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52283242E4E
	for <lists+usrp-users@lfdr.de>; Wed, 12 Aug 2020 19:53:13 +0200 (CEST)
Received: from [::1] (port=34026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5uw1-0003IP-9d; Wed, 12 Aug 2020 13:53:09 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:39348)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5uvy-0003DN-2U
 for usrp-users@lists.ettus.com; Wed, 12 Aug 2020 13:53:06 -0400
Received: by mail-qt1-f174.google.com with SMTP id w9so2154323qts.6
 for <usrp-users@lists.ettus.com>; Wed, 12 Aug 2020 10:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=hFKdfkc19XzhjLHr5Pb2kaXsDdPKtPZPf71+TkThmZI=;
 b=HG8lMnhi7FszsKVQ2xQobPAgY54MsNf7gE1WHyr7htloDYNkTotJdRSLx3AHnJnem6
 mkUlj0eNEqDDaW/p1H+g5uIjd0IeLrh4lUks/QCWEs4stMsyReTkX9xm6Y1EPm1d9jIt
 MzjYpw5hvZHkRoOt006wlWje1tC5le4HD1zqVBdSzBcmuNP1EM/J0q1Pq6QohJxn1x5T
 3tPuC3M1cAfDXpb+lNwoEx5CETl9OrPE4YCCnGueQDTOrdsNFyB/TaOXvgeo4icF1fBc
 MLf4jeJvIi65INyVxU46jtbuKjbEzsumkTTC0XnzujFVkHa9jTR88y3zEM4NobSXypTz
 G6BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=hFKdfkc19XzhjLHr5Pb2kaXsDdPKtPZPf71+TkThmZI=;
 b=TEPkrMiWdWmeLmnorvTXbtzXapAEhm9+7+rXc+B7uP6i1d3rn+zFt3D5wjkkgErJ2Q
 3c2mb9bATZpPUIwZdPB8zcGMGA9FyG6FEws9aa5DD9xjafWKQls8VNvDQS61O9DENcBp
 3w6XkvN1iwswee4yRl1tBgW4qBdVH+k3EnqEuM2+ofpL8gHEDnqpg9yG8dQ2nHscKDlk
 6imyBgDAMaJhSrhs6I/7RjMkXMieFnJRHzdCQZKWQj+3jGRkj+RSXahuLBGiTJjyHul8
 LFJzaOJWm296K0oc3cVXhuTF8/4vIk2uwJL5Fi3DnXLDlltOv3nC3KDElAcZAltJhl1+
 VO0w==
X-Gm-Message-State: AOAM530r1k4uZ5MsKhFLQAPxGi4IxyGbOmxJkt3vDDkUrM3zkxOtU2RR
 L54D5fOD6wHOZqwK9pEy/ZaRcebiWpk=
X-Google-Smtp-Source: ABdhPJx970s8dhesUNzQ2yzEPd1Ih63Ws7uVwL/iBtr2dOnnjR1DDkr60OlKdxgLgGuftmuVEQulaQ==
X-Received: by 2002:ac8:3894:: with SMTP id f20mr821002qtc.243.1597254745204; 
 Wed, 12 Aug 2020 10:52:25 -0700 (PDT)
Received: from lab.localdomain (d72-38-46-81.commercial1.cgocable.net.
 [72.38.46.81])
 by smtp.googlemail.com with ESMTPSA id i14sm3237088qtq.33.2020.08.12.10.52.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Aug 2020 10:52:24 -0700 (PDT)
Message-ID: <5F342C58.3080108@gmail.com>
Date: Wed, 12 Aug 2020 13:52:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: kpras@trilcomm.com
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <53F074DDB8EF9CF2.aeaa8677-cd80-44e6-a715-f32fb707a1f6@mail.outlook.com>
In-Reply-To: <53F074DDB8EF9CF2.aeaa8677-cd80-44e6-a715-f32fb707a1f6@mail.outlook.com>
Subject: Re: [USRP-users] [USRP B210] Getting zero samples from received
 stream for 2 RX channel
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
Content-Type: multipart/mixed; boundary="===============6286813367696433601=="
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
--===============6286813367696433601==
Content-Type: multipart/alternative;
 boundary="------------010107070601060301030707"

This is a multi-part message in MIME format.
--------------010107070601060301030707
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/12/2020 12:43 PM, kpras@trilcomm.com wrote:
> Dear Marcus,
> Any ither suggession please?
>
You didn't answer my questions:

Are you getting overrun indications on the console?    'O' character 
being printed out
Does reducing the sample rate help?
What version of UHD are you using?
Does the 'rx_multi_samples' example application work properly?

Additionally:

What kind of computer?  What CPU?   What kind of USB controller?  Is 
this on Linux?  Under a VM or on the actual hardware?


> ------------------------------------------------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, 10 August, 2020, 10:34 pm
> *To:* Prasad
> *Cc:* usrp-users@lists.ettus.com; Rao Yenamandra
> *Subject:* Re: [USRP-users] [USRP B210] Getting zero samples from 
> received stream for 2 RX channel
>
> What are you using to receive? Your own software? gnu Radio? UHD 
> examples?
>
> Please share the output of usrp_probe with us.
>
>
>
> Sent from my iPhone
>
>     On Aug 10, 2020, at 12:53 PM, Prasad via USRP-users
>     <usrp-users@lists.ettus.com> wrote:
>
>     ﻿
>
>     Hi Everyone,
>
>     Getting zero samples from received stream, when number of RX
>     channel set to 2.
>
>     Bellows are the USRP setting:
>
>     Master-clock-rate: 30.72e6
>
>     Rate:
>
>                    Channel0: 30.72e6
>
>                    Channel1: 30.72e6
>
>     Gain:
>
>                    Channel0: 45
>
>                    Channel1: 45
>
>     Frequency:
>
>                    Channel0: 3.8GHz
>
>     Channel1: 3.8GHz
>
>     Thanks,
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>


--------------010107070601060301030707
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/12/2020 12:43 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:kpras@trilcomm.com">kpras@trilcomm.com</a> wrote:<br>
    </div>
    <blockquote
cite="mid:53F074DDB8EF9CF2.aeaa8677-cd80-44e6-a715-f32fb707a1f6@mail.outlook.com"
      type="cite">
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">Dear Marcus,</div>
      <div style="color: rgb(33, 33, 33); background-color: rgb(255,
        255, 255); text-align: left;" dir="auto">Any ither suggession
        please?</div>
      <div id="id-09f43888-0140-4ff3-88cb-fca44500a3b1"
        class="ms-outlook-mobile-reference-message">
        <div style="font-family: sans-serif; font-size: 12pt; color:
          rgb(0, 0, 0);"><br>
        </div>
      </div>
    </blockquote>
    You didn't answer my questions:<br>
    <br>
    Are you getting overrun indications on the console?    'O' character
    being printed out<br>
    Does reducing the sample rate help?<br>
    What version of UHD are you using?<br>
    Does the 'rx_multi_samples' example application work properly?<br>
    <br>
    Additionally:<br>
    <br>
    What kind of computer?  What CPU?   What kind of USB controller?  Is
    this on Linux?  Under a VM or on the actual hardware?<br>
    <br>
    <br>
    <blockquote
cite="mid:53F074DDB8EF9CF2.aeaa8677-cd80-44e6-a715-f32fb707a1f6@mail.outlook.com"
      type="cite">
      <div id="id-09f43888-0140-4ff3-88cb-fca44500a3b1"
        class="ms-outlook-mobile-reference-message">
        <hr style="display:inline-block;width:98%" tabindex="-1">
        <div id="divRplyFwdMsg"><strong>From:</strong> Marcus D Leech
          <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <strong>Sent:</strong> Monday, 10 August, 2020, 10:34 pm<br>
          <strong>To:</strong> Prasad<br>
          <strong>Cc:</strong> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>; Rao
          Yenamandra<br>
          <strong>Subject:</strong> Re: [USRP-users] [USRP B210] Getting
          zero samples from received stream for 2 RX channel<br>
        </div>
        <br>
        <meta content="text/html; charset=utf-8">
        What are you using to receive? Your own software? gnu Radio? UHD
        examples?
        <div><br>
        </div>
        <div>Please share the output of usrp_probe with us. </div>
        <div><br>
        </div>
        <div><br>
          <div><br>
            <div dir="ltr">Sent from my iPhone</div>
            <div dir="ltr"><br>
              <blockquote>On Aug 10, 2020, at 12:53 PM, Prasad via
                USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote>
              <div dir="ltr">﻿
                <meta content="text/html; charset=us-ascii">
                <meta name="Generator" content="Microsoft Word 12
                  (filtered medium)">
                <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
                <div class="Section1">
                  <p class="MsoNormal">Hi Everyone,</p>
                  <p class="MsoNormal"> </p>
                  <p class="MsoNormal">Getting zero samples from
                    received stream, when number of RX
                    channel set to 2.</p>
                  <p class="MsoNormal"> </p>
                  <p class="MsoNormal">Bellows are the USRP setting:</p>
                  <p class="MsoNormal">Master-clock-rate: 30.72e6</p>
                  <p class="MsoNormal">Rate:</p>
                  <p class="MsoNormal">               Channel0:
                    30.72e6</p>
                  <p class="MsoNormal">               Channel1:
                    30.72e6</p>
                  <p class="MsoNormal">Gain: </p>
                  <p class="MsoNormal">               Channel0:
                    45</p>
                  <p class="MsoNormal">               Channel1:
                    45</p>
                  <p class="MsoNormal">Frequency:</p>
                  <p class="MsoNormal">               Channel0:
                    3.8GHz</p>
                  <p class="MsoNormal" style="text-indent:.5in">Channel1:
                    3.8GHz</p>
                  <p class="MsoNormal"> </p>
                  <p class="MsoNormal">Thanks,</p>
                </div>
                <span>_______________________________________________</span><br>
                <span>USRP-users mailing list</span><br>
                <span><a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br>
                <span><a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
              </div>
            </blockquote>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010107070601060301030707--


--===============6286813367696433601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6286813367696433601==--

