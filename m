Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1D149EFB
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 07:24:48 +0100 (CET)
Received: from [::1] (port=59734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ivxpG-0004Hy-LS; Mon, 27 Jan 2020 01:24:46 -0500
Received: from mail-qt1-f170.google.com ([209.85.160.170]:36007)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ivxpC-0004AW-KJ
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 01:24:42 -0500
Received: by mail-qt1-f170.google.com with SMTP id t13so6171961qto.3
 for <usrp-users@lists.ettus.com>; Sun, 26 Jan 2020 22:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=5ScME334LcO5yb+qFMumG+D0UYh6jMTyse2u0On7VUE=;
 b=Y/2ln5rc0r4ociNERDFb4hnn6n9v2X+p2HdBZXKsOHv9cxUlatCg7eLPxnL+B5g6l2
 ndL16sqZ5q1HFAGJ6Q0XdbSQ55Wl6lhVy2CfjwdxcD+naU1SJIkQv+HsZJWmXdZger7a
 7U7NkvJOwyxSPLwU6uX/ebM0RVTOPHinLGzhqiZjjJhbQ+3IsXs8Aj0nptj5KugKpZ9Q
 wO62Le53VElpQK8hSuTeOYa2LrV2px6yinN0lhpnjm++PMSmeRKS+JLcoAXlAzOog7zm
 kWYqkS0qc+EZi2UTcMO3B3WAv0DYmYRAuj2gzz+NbRTHL5O0Sr2EnNSjXSreFgmo1BSy
 OpaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=5ScME334LcO5yb+qFMumG+D0UYh6jMTyse2u0On7VUE=;
 b=Bs0XQefDSpgGld/u8og575iCsp6N/cXQ1kwp5DO7rlEwJ2q2KCSuULITJIH1zSVB1e
 G2CBEuuCywruvY0hyXIlG3tG4Li1fIrh3/fYqvoliwIOlwxCg5wsjia2pch8JqCg8hFg
 wdBcI0ZzgI8qMkjUc8/HnIZqjtoy9Y9ZYEcYuERKoGNSyeMgHm945b4Mjx76KXyHfKu/
 VC/CggRl59b4UJ8TsgAdkJ1TU9x22+gkVJvBIKUCS7rtfpuBLWl0hZPDQde4q9MjYAeB
 8QTJ39jpImCCEEKSfMgq7yicDdx4ofe2g6DFpk9RUgNCyFx/6JXpWToXjA42V8yID2qG
 qGHg==
X-Gm-Message-State: APjAAAWxVa1jravHGPq8IhhOjddOndad0xpKAi7AMUi8iwn4ZlyOwwGI
 FhuQ/mwRD7okZqhwujryJQaEDFe5VA4=
X-Google-Smtp-Source: APXvYqwahRFWsCLhxlPrgWl1tblVkDguwqoV77HihWCSNxUsO0UFBwn77ccMhIH/YllkPGyxa268MA==
X-Received: by 2002:ac8:3853:: with SMTP id r19mr14516216qtb.69.1580106241815; 
 Sun, 26 Jan 2020 22:24:01 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id e64sm9516073qtd.45.2020.01.26.22.24.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jan 2020 22:24:01 -0800 (PST)
Message-ID: <5E2E8200.8090507@gmail.com>
Date: Mon, 27 Jan 2020 01:24:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
References: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <FC4F7A4E-97C4-4CBD-8E54-305964E29BB2@gmail.com>
 <BMXPR01MB236051E2B9CC59A25A0F469C8B0F0@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>,
 <5E2948D5.4090603@gmail.com>
 <BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8502762153235062249=="
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
--===============8502762153235062249==
Content-Type: multipart/alternative;
 boundary="------------020206020604080408000905"

This is a multi-part message in MIME format.
--------------020206020604080408000905
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2020 01:00 AM, Sourin Mondal (Vehere) wrote:
> Hi Marcus,
>
> Thanks for the information. Could you please also tell what is the 
> accuracy with which the phases are aligned between USRP channels, when 
> we use 10 MHz reference to align, in pico-seconds or nano-seconds?
>
> Regards,
> Sourin
The answer to that question depends very much on the hardware involved.

In general, two synthesizers locked to the same clock won't have a zero 
phase *offset* from one another, but will be phase-coherent
   on an ongoing basis.

Now, for *some* types of Ettus hardware, there is special hardware that 
can arrange to phase-reset during tuning, so that all the participating
   synthesizers will have small phase-offsets with respect to one another.

We generally talk in terms of degrees, rather than picoseconds or 
nanoseconds.  Residual phase offsets will typically be under 5 degrees.

But keep in mind that things like differential heating of cables, and 
internal circuit in ANY coherent radio can case the phase relationships
   to drift slightly.




> ------------------------------------------------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, January 23, 2020 12:48 PM
> *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
> *Subject:* Re: [USRP-users] phase-aligning two USRPs without Octoclock
> On 01/22/2020 11:53 PM, Sourin Mondal (Vehere) wrote:
>>
>> Hi Marcus,
>> Do I need to use 1 PPS also along with 10 MHz reference? And are 
>> there any software commands to be used along with these hardware 
>> configuration for synchronizing multiple USRPs without octoclock? If 
>> so what are those commands?
>>
>> Regards,
>> Sourin
> You would do well to spend some time with this app-note:
>
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
>
> Indeed, there are many app-notes that might be relevant for you.
>
> Along with:
>
> http://files.ettus.com/manual/
>
>


--------------020206020604080408000905
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/27/2020 01:00 AM, Sourin Mondal
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks for the information. Could you please also tell what is
        the accuracy with which the phases are aligned between USRP
        channels, when we use 10 MHz reference to align, in pico-seconds
        or nano-seconds?</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Regards,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Sourin</div>
    </blockquote>
    The answer to that question depends very much on the hardware
    involved.<br>
    <br>
    In general, two synthesizers locked to the same clock won't have a
    zero phase *offset* from one another, but will be phase-coherent<br>
      on an ongoing basis.<br>
    <br>
    Now, for *some* types of Ettus hardware, there is special hardware
    that can arrange to phase-reset during tuning, so that all the
    participating<br>
      synthesizers will have small phase-offsets with respect to one
    another.<br>
    <br>
    We generally talk in terms of degrees, rather than picoseconds or
    nanoseconds.  Residual phase offsets will typically be under 5
    degrees.<br>
    <br>
    But keep in mind that things like differential heating of cables,
    and internal circuit in ANY coherent radio can case the phase
    relationships<br>
      to drift slightly.  <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:BM1PR0101MB1700776C3BCA0679A99CEBE48B0B0@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b> Marcus
          D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Thursday, January 23, 2020 12:48 PM<br>
          <b>To:</b> Sourin Mondal (Vehere)
          <a class="moz-txt-link-rfc2396E" href="mailto:sourin.mondal@vehere.com">&lt;sourin.mondal@vehere.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] phase-aligning two USRPs
          without Octoclock</font>
        <div> </div>
      </div>
      <div style="background-color:#FFFFFF">
        <div class="x_moz-cite-prefix">On 01/22/2020 11:53 PM, Sourin
          Mondal (Vehere) wrote:<br>
        </div>
        <blockquote type="cite">
          <style type="text/css" style="display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi Marcus,</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Do I need to use 1 PPS also along with 10 MHz reference? And
            are there any software commands to be used along with these
            hardware configuration for synchronizing multiple USRPs
            without octoclock? If so what are those commands?</div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Regards, </div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Sourin</div>
          <div dir="auto">
            <div>
            </div>
          </div>
        </blockquote>
        You would do well to spend some time with this app-note:<br>
        <br>
        <a moz-do-not-send="true" class="x_moz-txt-link-freetext"
href="https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices</a><br>
        <br>
        Indeed, there are many app-notes that might be relevant for you.<br>
        <br>
        Along with:<br>
        <br>
        <a moz-do-not-send="true" class="x_moz-txt-link-freetext"
          href="http://files.ettus.com/manual/">http://files.ettus.com/manual/</a><br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020206020604080408000905--


--===============8502762153235062249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8502762153235062249==--

