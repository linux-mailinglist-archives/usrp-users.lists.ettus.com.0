Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB2E37BB8
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 20:01:25 +0200 (CEST)
Received: from [::1] (port=54854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYwhY-0006gW-QT; Thu, 06 Jun 2019 14:01:24 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:43511)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hYwhU-0006Hi-Qr
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 14:01:20 -0400
Received: by mail-qt1-f181.google.com with SMTP id z24so3694659qtj.10
 for <usrp-users@lists.ettus.com>; Thu, 06 Jun 2019 11:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=7LekG/uuzrvC487IOpE0IEPwzZTuM8eJmgDF1N4dSEw=;
 b=ojxla7+ByklI4fR4r6RnsS3Z8tIg3UDvv6zqjcQXGpW1E+NDJq9Ar2ifX40DEHLUUd
 QL0Nceo2W4l+sme1o3rlGyF0nRetxoxYhciJ715gMSeiYWxxALavEiaAZlQDK50OtitH
 8/iqIuHez2TgqiBrDzuZJNhxyatWw5gOMqmMpDHMhBx7JRQr7pObHXkyA+PmvhBEx2Sl
 nJH/1rRm6ipwoUmXs5u6Y8b2+gCOabw74mjRjHhCbgRE1mQaTsb2NHtBnYj2bOGrCcAX
 rQnaz0dDSUIQhO5uXR6fQgeepYvckwWJNlegrRh6N/S80JAL/KBqfqDvT/aOn/djKvb/
 Ilnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=7LekG/uuzrvC487IOpE0IEPwzZTuM8eJmgDF1N4dSEw=;
 b=jTWxM39PcY9MgLw+EzPtQJB5SeC0LVCBgSRLtE/OhBOHkmfIvQVaEEkWskL+udlitC
 v7G55aDZzQuKeRD7DdW3iyw73BNYKfQK1ziFhNCIAoie9yH1qjis9Ip39liuX2Dg5cb0
 Z2A5grCJ0BaKBemIiCF3L7bsOe+k3tvkwr8isXAEx6v9STWr8ZNxULWLZUz65YjVkbe2
 uWAixAlGqOV44xr9KMHOPKoRGfYMonKsbkZZqUWxBAs7KFWVfX9blijWYkzJr6LUBJ+Z
 ySuVwpN46Y81RtM409HuruudXz7er08MNvU4yU+7Z4TCUybo2Rh7fxoJswxyBzayKTjq
 BeAg==
X-Gm-Message-State: APjAAAVeGXS8Qk1GhrYxAPBPpPmnCqoe6V29YswFFS22eJKGLlrs+zgX
 mESQv4UX+NodczaCQrscAl3k4xB59Mo=
X-Google-Smtp-Source: APXvYqwAWg1pw9p+7gp7grQBeH1rRdWtp7kgydSLtX4sLkKxOdF2HFiAMCVeyTbPye/0ze7F+KB4tQ==
X-Received: by 2002:a0c:d1d9:: with SMTP id k25mr24850533qvh.233.1559844040283; 
 Thu, 06 Jun 2019 11:00:40 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id f67sm1308347qtb.68.2019.06.06.11.00.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 11:00:39 -0700 (PDT)
Message-ID: <5CF954C7.1090202@gmail.com>
Date: Thu, 06 Jun 2019 14:00:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
In-Reply-To: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
Subject: Re: [USRP-users] UHD Comms Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============7196562403986118325=="
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
--===============7196562403986118325==
Content-Type: multipart/alternative;
 boundary="------------050800080904060704040502"

This is a multi-part message in MIME format.
--------------050800080904060704040502
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2019 01:46 PM, Mark Koenig via USRP-users wrote:
>
> Please help, with the error I am seeing.
>
> I am currently using an X310 with a UBX160 daughtercard and I get the 
> error below when changing the frequency parameters of the radio.
>
> RuntimeError: EnvironmentError: IOError: Radio ctrl (A) packet parse 
> error - AssertionError: packet_info.packet_count == (seq_to_ack & 0xfff)
>
>   in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)
>
> I am currently running UHD 3.9.7, but have also seen a similar error 
> with 3.10.2
>
> Thanks
>
> Mark
>
>
What type of ethernet interface are you using?  What sample rate are you 
using?



--------------050800080904060704040502
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/06/2019 01:46 PM, Mark Koenig via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Title" content="">
      <meta name="Keywords" content="">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
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
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt">Please help,
            with the error I am seeing.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">I am
            currently using an X310 with a UBX160 daughtercard and I get
            the error below when changing the frequency parameters of
            the radio.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">RuntimeError:
            EnvironmentError: IOError: Radio ctrl (A) packet parse error
            - AssertionError: packet_info.packet_count == (seq_to_ack
            &amp; 0xfff)<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">  in
            uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">I am
            currently running UHD 3.9.7, but have also seen a similar
            error with 3.10.2<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Thanks<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Mark<o:p></o:p></span></p>
      </div>
      <br>
    </blockquote>
    What type of ethernet interface are you using?  What sample rate are
    you using?<br>
    <br>
    <br>
  </body>
</html>

--------------050800080904060704040502--


--===============7196562403986118325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7196562403986118325==--

