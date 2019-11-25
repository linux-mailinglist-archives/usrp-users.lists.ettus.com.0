Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CFB1093B3
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2019 19:49:45 +0100 (CET)
Received: from [::1] (port=50618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZJQY-00071E-MG; Mon, 25 Nov 2019 13:49:38 -0500
Received: from mail-il1-f169.google.com ([209.85.166.169]:33216)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iZJQV-0006vj-TB
 for usrp-users@lists.ettus.com; Mon, 25 Nov 2019 13:49:35 -0500
Received: by mail-il1-f169.google.com with SMTP id y16so7634255iln.0
 for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2019 10:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=1lOGgA3phJwwkzPD4TYMeDXPwnDB47mfgCT+QaB6+OU=;
 b=LmijnFzhpcaWLmv/fx7jka1saQnTAW/pMQ0Wi/gTtmiDgTKbLZIPicZ8dmpaveXxIf
 +HAfe4wuRGlPPgiF6oS0aBvmCjVPeDUlhnI7BbGgQTBpdqiDWK3EmJnm3sOAdWz1EsBR
 fbG2AhemWKw47EXBllxELdpyMkOm/lT70vlBz5eX1hVFzc/+J5v2SfUFBcXoei+nrtmO
 JnbdLSbtod7oQykyD1A1yzvuVtVHO+9Wp2Rswq2ImN5p/Sh76SQNJje8f23pvfsHsqLj
 h7JDiUHmF7/Z52Dlu4NOuFr8qRVjW+v89zHC8XozWTmc/RsgiYys6Z5UynIyrKa82Yt/
 l4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=1lOGgA3phJwwkzPD4TYMeDXPwnDB47mfgCT+QaB6+OU=;
 b=iz+KVyG9SBozei5EhfNRFO27JIgsXvWFVIsQdnzqJLObjcLrPixRz6PDurDtI0LWyb
 nziweNV6oBz3Lxl3/zuiDq6C6kUtzzgPep1hgQLp4IyaJH46r2nZxYi7mBCXBXbKrXh0
 PAPG52OEJ2I3B6oGwMYP3tcqyWgMHZpb+1Rj81TJrDVra6HSvi9ypJXrt2cFsrBeYe1b
 KFN/MhbtHjlqGyxow+POFpj9oQw7obCJwIBLc9gx6hKE6B8ih9OXZmUd2bhTEFo89jAI
 zGninaiHf/2EwOfJ0EspM9YMVfUtr6emeEZBwJ8m4fXIBpptZain82MGRrpgjbk3tloA
 lTAA==
X-Gm-Message-State: APjAAAUQtNOxvusMU1G9Wbx9hcZdubtnfY/cHtBsHF4+d+Xg0PwXktEm
 ZQHWSGR3yfSFN4zysJxgu0RHMTBm1vk=
X-Google-Smtp-Source: APXvYqw6ZBGzmZ5M5PjkkrcFQRwBfsMrk5wtd2ZOaMSFdzWYBR1pKWKsZG4kRutR4ncQnceP3eI1lA==
X-Received: by 2002:a92:5fd3:: with SMTP id i80mr34126724ill.275.1574707734947; 
 Mon, 25 Nov 2019 10:48:54 -0800 (PST)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id p8sm2424753ilk.11.2019.11.25.10.48.53
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Nov 2019 10:48:54 -0800 (PST)
Message-ID: <5DDC2215.1040201@gmail.com>
Date: Mon, 25 Nov 2019 13:48:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAB1PH1557Loir3KTYXmky=PCtqYmYz+SPga9tN+phXmhraGT3w@mail.gmail.com>
In-Reply-To: <CAB1PH1557Loir3KTYXmky=PCtqYmYz+SPga9tN+phXmhraGT3w@mail.gmail.com>
Subject: Re: [USRP-users] Configuring RX connection type on N210/TVRX2
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
Content-Type: multipart/mixed; boundary="===============6817095296414349102=="
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
--===============6817095296414349102==
Content-Type: multipart/alternative;
 boundary="------------080506030002050109030708"

This is a multi-part message in MIME format.
--------------080506030002050109030708
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2019 04:32 AM, Julian Ilinca via USRP-users wrote:
> Hello all,
>
> This message is a reply to a previous thread which I started. The 
> contents of which can be found below.
>
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.html
>
> My question now concerns what data is actually stored in the final I 
> and Q components that are sent to the host. The question and the 
> answer are presented below.
>
> Q1
> The daughter-board is set so that one channel retrieves the I 
> component and the other channel the Q. I retrieved this information 
> with the uhd_usrp_probe command. In the output under RX0 its says 
> connection type = Q and on RX1 connection type = I. What command do I 
> have to use to change connection type of RX0 from Q to I, so that I 
> could have two channels measuring the real component.
>
> A1
> That isn't possible.  Signals are presented to the host as complex 
> samples.  The TVRX2 *analog hardware* uses a so-called "low-IF" 
> architecture, and the N210 has a single 2-channel complex ADC.  Each 
> of those two channels is *hard wired* to go to one of the ADC 
> channels, and the DDC algorithms in the FPGA convert that to a complex 
> base-band signal that is then filtered, downsampled, and sent to the 
> host computer.
>
> From this answer, am I to understand that both of the signals coming 
> from antenna 1 and 2 respectively are first mixed with a signal 
> provided by the local oscillator (LO) so that they are separately 
> converted to baseband. After which the information of the baseband 
> originating from antenna 1 is stored in the Real part of the complex 
> number and the signal coming from antenna 2 to imaginary part. And 
> only then then filtering and down sampling occurs. What I want to know 
> is that are the downsampled and filtered baseband signals from antenna 
> 1 and 2 preserved in the IQ components respectively.
>
> Furthermore, as I and Q usually mean in-phase and quadrature 
> component, is the signal coming from antenna 2 mixed with a LO-signal 
> that has been shifted by 90 degrees in phase compared to the LO-signal 
> that is mixed with channel 1.
The two analog channels (antenna ports) on the TVRX2 are separate--they 
can be tuned separately, and go through separate
   mixing pathways down to a "low-IF".  That low-IF is sampled by the 
single two-channel ADC on the motherboard, which creates
   two separate I/Q data streams by converting the low-IF to baseband 
digitally inside the FPGA.  Again, there are TWO channels
   that can  be  created by the TVRX2, and EACH of those channels 
appears to the host as a complex-baseband.


>
> Thank you again
>
> PS.
> I'm sorry, but I could not reply directly to the thread as I did not 
> receive a response email to my in-box. If someone can instruct me how 
> to accomplish the reply procedure with gmail, or provide a link with 
> the relevant information I would be more than happy to use the list as 
> it is intended to be used.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------080506030002050109030708
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/25/2019 04:32 AM, Julian Ilinca
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB1PH1557Loir3KTYXmky=PCtqYmYz+SPga9tN+phXmhraGT3w@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello all,<br>
        <br>
        This message is a reply to a previous thread which I started.
        The contents of which can be found below.<br>
        <br>
        <a moz-do-not-send="true"
href="https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.html">https://www.mail-archive.com/usrp-users@lists.ettus.com/msg09327.html</a><br>
        <br>
        My question now concerns what data is actually stored in the
        final I and Q components that are sent to the host. The question
        and the answer are presented below. <br>
        <br>
        Q1<br>
        The daughter-board is set so that one channel retrieves the I
        component and the other channel the Q. I retrieved this
        information with the uhd_usrp_probe command. In the output under
        RX0 its says connection type = Q and on RX1 connection type = I.
        What command do I have to use to change connection type of RX0
        from Q to I, so that I could have two channels measuring the
        real component.<br>
        <br>
        A1<br>
        That isn't possible.  Signals are presented to the host as
        complex samples.  The TVRX2 *analog hardware* uses a so-called
        "low-IF" architecture, and the N210 has a single 2-channel
        complex ADC.  Each of those two channels is *hard wired* to go
        to one of the ADC channels, and the DDC algorithms in the FPGA
        convert that to a complex base-band signal that is then
        filtered, downsampled, and sent to the host computer.<br>
        <br>
        From this answer, am I to understand that both of the signals
        coming from antenna 1 and 2 respectively are first mixed with a
        signal provided by the local oscillator (LO) so that they are
        separately converted to baseband. After which the information of
        the baseband originating from antenna 1 is stored in the Real
        part of the complex number and the signal coming from antenna 2
        to imaginary part. And only then then filtering and down
        sampling occurs. What I want to know is that are the downsampled
        and filtered baseband signals from antenna 1 and 2 preserved in
        the IQ components respectively.<br>
        <br>
        Furthermore, as I and Q usually mean in-phase and quadrature
        component, is the signal coming from antenna 2 mixed with a
        LO-signal that has been shifted by 90 degrees in phase compared
        to the LO-signal that is mixed with channel 1.<br>
      </div>
    </blockquote>
    The two analog channels (antenna ports) on the TVRX2 are
    separate--they can be tuned separately, and go through separate<br>
      mixing pathways down to a "low-IF".  That low-IF is sampled by the
    single two-channel ADC on the motherboard, which creates<br>
      two separate I/Q data streams by converting the low-IF to baseband
    digitally inside the FPGA.  Again, there are TWO channels<br>
      that can  be  created by the TVRX2, and EACH of those channels
    appears to the host as a complex-baseband.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB1PH1557Loir3KTYXmky=PCtqYmYz+SPga9tN+phXmhraGT3w@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        Thank you again<br>
        <br>
        PS.<br>
        I'm sorry, but I could not reply directly to the thread as I did
        not receive a response email to my in-box. If someone can
        instruct me how to accomplish the reply procedure with gmail, or
        provide a link with the relevant information I would be more
        than happy to use the list as it is intended to be used.</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------080506030002050109030708--


--===============6817095296414349102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6817095296414349102==--

