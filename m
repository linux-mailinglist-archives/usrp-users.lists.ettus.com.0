Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A78C196067
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2020 22:28:13 +0100 (CET)
Received: from [::1] (port=39996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jHwWP-0007JV-NH; Fri, 27 Mar 2020 17:28:09 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:43114)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jHwWL-0006fT-RO
 for usrp-users@lists.ettus.com; Fri, 27 Mar 2020 17:28:05 -0400
Received: by mail-qk1-f178.google.com with SMTP id o10so12405235qki.10
 for <usrp-users@lists.ettus.com>; Fri, 27 Mar 2020 14:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=bNGmy9vVd6pyRwNNIcgqVSRukKOkreFkwr97fce0Cps=;
 b=bhoDmj2FLt5U+BlMM2Hd8bj49/U1ImVcteJJHfvQVh4WI+pu4he9M0+lnfMF4Lpnwv
 +htXWBs5K3NWIOicq6ZXs/OqTLDKUE6X64uBc7EHEzor3zEnZlcf+XJECnwsv69oaltO
 PJlb6OhoKCKRta2xzxV0QHo6V+0nmQfSTWBcVqahKq40yxh+se06ujTHeefOxhA/qUbk
 xl/2i3qakLDv7Rlqp+BrYtJr/uVYAnPaLMHPUzp723OPLGL78emVsgCU5hacQkm3sYRs
 Ha5G/X4MyEhEW3e454FbQ9ANAc46A6DM92EsIdDjIARDVygUI+vNURpcgRfnpboT7Hpt
 M6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=bNGmy9vVd6pyRwNNIcgqVSRukKOkreFkwr97fce0Cps=;
 b=nZTrqDoX2lskthiZuc3OpjqTNIvr9zeWXQN1+68WGvtbPhJ6EyYUGdWoGYQJE1lKyN
 AMUp6GkXIym/VwmXkyxDvyEKXZOGE8NpV4kXEhYn1koXH3ylp6rYH9fypJ6UUz2egrKT
 PwY5qmKtSZF2iZ8zeLoyHEWJQWxo/ahf+5k7SIyywLsvQcHVmNYQcN0h8qFzVHqw9KyD
 5VijWuxZ2aFgEUP0pwfm4qu2bEMWNoGTzsDA0IhjJC002OiCwUX8hX2j/VUzsuyqd3pX
 erGC8T4xDoMpJcIHmaqcry9j0Q5nz+X2i49Y0cGiOSLCbxBVTZYPWvfrv/ivh/mPr5uH
 zgNA==
X-Gm-Message-State: ANhLgQ32OuZhwYCOMXfoAqpTIB3hGyM7+Fkqw1ETMDfxMfLkCqqcRP2z
 6Ce5vPa5mPoqDni1MiB3FxlQ1u3E
X-Google-Smtp-Source: ADFU+vvBi1juvgBFQOIvJB8u22TbLDXHbww7OfxkSzh4PlFTbDnINcZ9yl5B273mGmYMV1e9+qmd0g==
X-Received: by 2002:a37:a952:: with SMTP id s79mr1462357qke.368.1585344445093; 
 Fri, 27 Mar 2020 14:27:25 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id y17sm4982252qth.59.2020.03.27.14.27.24
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Mar 2020 14:27:24 -0700 (PDT)
Message-ID: <5E7E6FBB.2080209@gmail.com>
Date: Fri, 27 Mar 2020 17:27:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <10F7328F6AD1354BA6DD787687B66B9001A3050C3A@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A3050C3A@Maui.in.dynetics.com>
Subject: Re: [USRP-users] X310 UHD 3.15 Lockups
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
Content-Type: multipart/mixed; boundary="===============7372057925291792816=="
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
--===============7372057925291792816==
Content-Type: multipart/alternative;
 boundary="------------050707090904070905020104"

This is a multi-part message in MIME format.
--------------050707090904070905020104
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 03/27/2020 04:15 PM, Carmichael, Ryan via USRP-users wrote:

> I recently updated from 3.11.1 to 3.15LTS to try to resolve a receive 
> lockup problem, however it still appears to be happening (albeit 
> seemingly less frequently).
>
> Essentially, stream->recv() gets into a state where it never returns, 
> even though we are using the default timeout (0.1). Verified via 
> debugger that recv() itself is just hanging.
>
> We essentially have a function A that roughly looks like the code 
> below (I’m not leaving much out). We call this function A over and 
> over quite frequently. Are there any red flags here?
>
> A() {
>
>     uhd::stream_cmd_t 
> rxStreamCmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>     rxStreamCmd.stream_now = true;
>
>     rxStreamCmd.time_spec = uhd::time_spec_t();
>
>     rxStreamCmd.num_samps = nSamples_a;
>
>     rxStream ->issue_stream_cmd(rxStreamCmd);
>
>     numReceived = 0;
>
>     uhd::rx_metadata_t metaData
>
>     while (numReceived < nSamples_a) {
>
>         .
>
>         .
>
>         // calculate numLeftToRead
>
>         .
>
>         .
>
>         uint samplesReceived = rxStream->recv(buffer, numLeftToRead, 
> metaData);
>
>         .
>
>         .
>
>         // calculate numReceived
>
>     }
>
> }
>
> This “lockup” typically does not require the radio to be restarted, 
> just my application.
>
> /
> ------------------------------------------------------------------------
> /
Windows or Linux?   Native or VM?

My gut says this is an IP/Network stack issue.




--------------050707090904070905020104
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/27/2020 04:15 PM, Carmichael,
      Ryan via USRP-users wrote:<br>
      <br>
    </div>
    <blockquote
cite="mid:10F7328F6AD1354BA6DD787687B66B9001A3050C3A@Maui.in.dynetics.com"
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
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
        <p class="MsoNormal">I recently updated from 3.11.1 to 3.15LTS
          to try to resolve a receive lockup problem, however it still
          appears to be happening (albeit seemingly less frequently).
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Essentially, stream-&gt;recv() gets into a
          state where it never returns, even though we are using the
          default timeout (0.1). Verified via debugger that recv()
          itself is just hanging.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We essentially have a function A that
          roughly looks like the code below (I’m not leaving much out).
          We call this function A over and over quite frequently. Are
          there any red flags here?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">A() {<o:p></o:p></p>
        <p class="MsoNormal">    uhd::stream_cmd_t
          rxStreamCmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<o:p></o:p></p>
        <p class="MsoNormal">    rxStreamCmd.stream_now = true;<o:p></o:p></p>
        <p class="MsoNormal">    rxStreamCmd.time_spec =
          uhd::time_spec_t();<o:p></o:p></p>
        <p class="MsoNormal">    rxStreamCmd.num_samps = nSamples_a;<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">    rxStream
          -&gt;issue_stream_cmd(rxStreamCmd);<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">    numReceived = 0;<o:p></o:p></p>
        <p class="MsoNormal">    uhd::rx_metadata_t metaData<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">    while (numReceived &lt; nSamples_a) {<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        // calculate numLeftToRead<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        uint samplesReceived =
          rxStream-&gt;recv(buffer, numLeftToRead, metaData);<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        .<o:p></o:p></p>
        <p class="MsoNormal">        // calculate numReceived<o:p></o:p></p>
        <p class="MsoNormal">    }<o:p></o:p></p>
        <p class="MsoNormal">}<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">This “lockup” typically does not require
          the radio to be restarted, just my application.
          <o:p></o:p></p>
      </div>
      <i><br>
        <hr></i><br>
    </blockquote>
    Windows or Linux?   Native or VM?<br>
    <br>
    My gut says this is an IP/Network stack issue.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050707090904070905020104--


--===============7372057925291792816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7372057925291792816==--

