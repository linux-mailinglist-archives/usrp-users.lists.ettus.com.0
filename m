Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6F5217779
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jul 2020 21:04:50 +0200 (CEST)
Received: from [::1] (port=34458 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jssrw-0001Q1-2i; Tue, 07 Jul 2020 15:03:04 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:34698)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jssrs-0001Hg-79
 for usrp-users@lists.ettus.com; Tue, 07 Jul 2020 15:03:00 -0400
Received: by mail-qt1-f173.google.com with SMTP id w34so12555930qte.1
 for <usrp-users@lists.ettus.com>; Tue, 07 Jul 2020 12:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=PzBGdH4GGbdpLFzVIStb+XFIGUmBySwmIVz/eJvzzNs=;
 b=fKP3G2v4ULAXRkxZDjglN1qeETV3DG73Rab+Qv2jNf7IIaIkDrsBY5d6FpCrlk3a/N
 LOR4r5pQZRif40aYHBgErlPBebMh9+7vB2COb/ecaDFu5NAIRgTAB9KwtFJiV5TzWHwa
 3+xKh7sStxY6D7e8GZEXEfGKWjCC+xxgbdM/fpAdIS/wEE79MiAyWI5q6WeiQjnfw+/s
 2VCINInY7Z3neBSEQP2kSB2GhLZ0C4UWbQAn6GXFWmOnYAh1RLudiKYw7OhrcD7DQSCX
 ALps2ITzSd7S5qgi2Q6/ntBTxot86pX72fMIJqPIWcOh+udpbllh3wsVu8Xki3GtbVbc
 yucw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=PzBGdH4GGbdpLFzVIStb+XFIGUmBySwmIVz/eJvzzNs=;
 b=OdYtOUilCm4Bt6IPaG1tii9BBY/ZKDM1h37ZOy3epUzNEQysFXjNDA+Pdnfmv46/4b
 b67/Rwn1jbpwkRsk3hy5xHQdqsbYvY+b8db7klVRiee0hP+Qy+D9V1XjCDeLuezCvnrh
 rwAQ44RnJZitzFVwvdPA9zAHL0EU3h6XOSCX4/JW6+2QvvhOCOdgoC71voJw5HPSn/BX
 aF8q1VNtu5tXZ754y2zi0pNSLu2yeiia/xZPH1npGTmfEKrqUrIs4S11p3xz4zGxifZv
 CSYT2qAGVGpYOZdhIHIr/OdDSZyfoubCS8oHFbht9m1kfJlW4UhCqM/WDNiDXI9xMBDV
 1qQQ==
X-Gm-Message-State: AOAM530jaNr17AHFjAyQA0zGuV3pxNFZzgoGudQVzVUFN1+fzCE3iLIG
 E37AyMUig2X2V286WY9F8VvkRzDh
X-Google-Smtp-Source: ABdhPJwZfZhtuiiURqIVhyzYS/mOWtv2E5/Oa89fNj5tdbebQ5soUQ98YYDDdTYG/YB3poDw9a8MYQ==
X-Received: by 2002:ac8:7454:: with SMTP id h20mr11485458qtr.84.1594148539465; 
 Tue, 07 Jul 2020 12:02:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 188sm23681878qkf.50.2020.07.07.12.02.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 Jul 2020 12:02:18 -0700 (PDT)
Message-ID: <5F04C6BA.7080302@gmail.com>
Date: Tue, 07 Jul 2020 15:02:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <DM6PR09MB4629191EB6B4BE961E5805AAA56D0@DM6PR09MB4629.namprd09.prod.outlook.com>
 <CAEXYVK7irHXPO8KHwxyPbQ=TonnCmwxp584ZKBqwmpoDfMxb6A@mail.gmail.com>
 <DM6PR09MB4255727BA53D8006EC75F442A5660@DM6PR09MB4255.namprd09.prod.outlook.com>
In-Reply-To: <DM6PR09MB4255727BA53D8006EC75F442A5660@DM6PR09MB4255.namprd09.prod.outlook.com>
Subject: Re: [USRP-users] x300 Timeout errors on receiving continuous stream
 (w/ Redhawk SDR)
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
Content-Type: multipart/mixed; boundary="===============7762575583356688927=="
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
--===============7762575583356688927==
Content-Type: multipart/alternative;
 boundary="------------090103000106030300050200"

This is a multi-part message in MIME format.
--------------090103000106030300050200
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/07/2020 01:00 PM, Lawrence L Elentukh via USRP-users wrote:
>
> Hello,
>
> Thank you for getting back to me. I implemented your suggestion; after 
> stopping the stream I added a recv() to the service function that 
> continues to receive while the usrp is stopped until it sees a timeout 
> error. I can see that it stops, then tries to receive from the usrp 
> and sees a single timeout error, as expected. Afterwards, issuing a 
> start command works for a few runs, but again I encounter a series of 
> timeout errors after a number of runs.
>
> The stop command is issued as follows:
> > uhd::stream_cmd_t 
> stream_cmd_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
>
> > stream_cmd_stop.stream_now = false;
>
> > usrp_device_ptr->issue_stream_cmd(stream_cmd_stop, 
> frontend_tuner_status[tuner_id].tuner_number);
>
> (The tuner id of all the start and stop commands, as well all timeout 
> errors, is ‘0’).
>
> Is there anything else I can try?
>
> Thanks,
> Lawrence
>
>
So, something you might try is to use the rx_samples_to_file example 
program that comes with UHD, and see if it exhibits the same
   behavior as your RedHawk example.



--------------090103000106030300050200
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/07/2020 01:00 PM, Lawrence L
      Elentukh via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:DM6PR09MB4255727BA53D8006EC75F442A5660@DM6PR09MB4255.namprd09.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello,<br>
          <br>
          Thank you for getting back to me. I implemented your
          suggestion; after stopping the stream I added a recv() to the
          service function that continues to receive while the usrp is
          stopped until it sees a timeout error. I can see that it
          stops, then tries to receive from the usrp and sees a single
          timeout error, as expected. Afterwards, issuing a start
          command works for a few runs, but again I encounter a series
          of timeout errors after a number of runs.
          <br>
          <br>
          The stop command is issued as follows:<br>
          &gt; uhd::stream_cmd_t
          stream_cmd_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);<o:p></o:p></p>
        <p class="MsoNormal">&gt; stream_cmd_stop.stream_now = false;<o:p></o:p></p>
        <p class="MsoNormal">&gt;
          usrp_device_ptr-&gt;issue_stream_cmd(stream_cmd_stop,
          frontend_tuner_status[tuner_id].tuner_number);<br>
          <br>
          (The tuner id of all the start and stop commands, as well all
          timeout errors, is ‘0’).<br>
          <br>
          Is there anything else I can try?<br>
          <br>
          Thanks,<br>
          Lawrence<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    So, something you might try is to use the rx_samples_to_file example
    program that comes with UHD, and see if it exhibits the same<br>
      behavior as your RedHawk example.<br>
    <br>
    <br>
  </body>
</html>

--------------090103000106030300050200--


--===============7762575583356688927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7762575583356688927==--

