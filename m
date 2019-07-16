Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 628576B06F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 22:31:31 +0200 (CEST)
Received: from [::1] (port=37098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnU6i-00065P-M6; Tue, 16 Jul 2019 16:31:28 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:46402)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hnU6f-0005yM-65
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 16:31:25 -0400
Received: by mail-lj1-f176.google.com with SMTP id v24so21316282ljg.13
 for <usrp-users@lists.ettus.com>; Tue, 16 Jul 2019 13:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mUXmcd/D+QfQccAtaZ5fNpl0Au2biLKB/EDDJsLCn9w=;
 b=ZX/AUK1K8CkDUf+HGkvsfhBV8C48dx26X6Hw12+WRzTPeexEH5YI+SruPaufhAyYyl
 d4vZ+dfuP00aCoF55sECFnyGkiVl35tFnPSjEHmA6aWTsq/MQBaL+43tKOzKz/o31B9o
 OLNsLKkZJDssD/SbIRTi2s3MmJGxUsOITz2hjsBs97czXAH/NAiWK4AIhs+3tLR8/Ucj
 n6JTRP7SiAY5HodTmtkE7wkyoR0tEdu+xtSj1ClY8RoijoxZYBGmMJjrFmJK22/xJSbP
 3eM6Uzxto2k0A8Oaz5/bl2xbYNPy551z4Xf0Q0so645hHZBqrTHJtkktVDcCQP/gyQlY
 ehdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mUXmcd/D+QfQccAtaZ5fNpl0Au2biLKB/EDDJsLCn9w=;
 b=GfqqYsbpnJKWUiFjBp8GhW/ciu1YheR49JP7evNJ8L3JhheeIei/rlolOXC7/mDc2q
 QisAbdQLSaCAR/qq0VWQzwB1zPBnPmOozJRdsN+Qy6DKHjHJv0+AoOH3jroJZNe9SHQa
 WDX+H0rXvAR6BmBbg/dzuFFy+1Bu1xn9si+yiFNHkfe+5Pz/8M2rJq4VpnJg1SXHQDuB
 9PPy0jAo/Am0t51vC4FOXs0tB98aOHdTXeYTn8DWm2LN4kOxxwMoxxk+cYtYqxW+9r2d
 xebrfQcj6X99FgMlnZLebuRiDy0k/gDDqOgcv2x/o0KyPaRKARBX0pv6qX7Mr/Rrduh3
 /0ww==
X-Gm-Message-State: APjAAAVhGpfayoh0wIKJGg+dweblSzdQYdoXyOZA5B1DcXMeFlCl+miU
 S8mjEwNJOLSsxnTztxTYAccehZjZYEwXV/XuduU=
X-Google-Smtp-Source: APXvYqyhV/ODfb+MFEHoDyMKGnJLCX/RdLgmXneWRjU9M767xLOmTnpLtYSSXzCpLiV3paWTprgd3dm/0aEEyNv3LNk=
X-Received: by 2002:a2e:8816:: with SMTP id x22mr19307243ljh.131.1563309043769; 
 Tue, 16 Jul 2019 13:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
 <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
 <5D250B39.5030201@gmail.com>
In-Reply-To: <5D250B39.5030201@gmail.com>
Date: Tue, 16 Jul 2019 16:30:30 -0400
Message-ID: <CANQ3h39ULfW=PdioX9rnneZgWQGCNzUzcE7MXOzzwpEa_9_2cw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4993452078573175268=="
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

--===============4993452078573175268==
Content-Type: multipart/alternative; boundary="0000000000003a6cc8058dd240f0"

--0000000000003a6cc8058dd240f0
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
I appreciate your reply,

I did some digging, and it seems I only have this instance of UHD
installed. How would I troubleshoot this?
Would the best solution be to simply reinstall?

My setup is that I installed Open Air Interface, and UHD has been installed
automatically by that.
The other commands work, such as uhd_usrp_probe, as well as Open Air
Interface's radio software, softmodem UE and eNB.

Regards,
Saeid

On Tue, Jul 9, 2019 at 5:47 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/09/2019 04:41 PM, Saeid Hashemi via USRP-users wrote:
>
> To include context, the uhd_config_info command shows the following:
>
> linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release
>
> And uname -a:
>
> Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9
> 10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
>
> The command line output from uhd_fft only shows the following:
>
> Segmentation fault (core dumped)
>
>
> My guess is that your uhd_fft was linked against a different version of
> the UHD library than you currently have on your system.
>
>
>
> On Tue, Jul 9, 2019 at 4:10 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>
>> Hi all,
>>
>> Running the command "uhd_fft" has been giving this result for me, would
>> anyone have a recommendation on how to fix the issue?
>>
>> Thanks and regards,
>> Saeid
>>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003a6cc8058dd240f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div>I appreciate your reply,</div><div><br></di=
v><div>I did some digging, and it seems I only have this instance of UHD in=
stalled. How would I troubleshoot this?</div><div>Would the best solution b=
e to simply reinstall?</div><div><br></div><div>My setup is that I installe=
d Open Air Interface, and UHD has been installed automatically by that.</di=
v><div>The other commands work, such as uhd_usrp_probe, as well as Open Air=
 Interface&#39;s radio software, softmodem UE and eNB.</div><div><br></div>=
<div>Regards,</div><div>Saeid</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 2019 at 5:47 PM Marcus D.=
 Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_6981431435061401222moz-cite-prefix">On 07/09/2019=
 04:41 PM, Saeid Hashemi
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>To include context, the uhd_config_info command shows the
          following:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">linux; GNU C++ version 4.8.4;
          Boost_105400; UHD_003.010.002.000-release<br>
        </div>
        <div><br>
        </div>
        <div>And uname -a:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">Linux nuc03 3.19.0-61-lowlatency
          #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9 10:15:00 UTC 2016
          x86_64 x86_64 x86_64 GNU/Linux</div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div>The command line output from uhd_fft only shows the
          following:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">Segmentation fault (core dumped)</d=
iv>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div style=3D"margin-left:40px"><br>
        </div>
      </div>
    </blockquote>
    My guess is that your uhd_fft was linked against a different version
    of the UHD library than you currently have on your system.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 2019 at 4:10 P=
M
          Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_=
blank">saeidh@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi all,
            <div><br>
            </div>
            <div>Running the command &quot;uhd_fft&quot; has been giving th=
is
              result for me, would anyone have a recommendation on how
              to fix the issue?</div>
            <div><br>
            </div>
            <div>Thanks and regards,</div>
            <div>Saeid</div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_6981431435061401222mimeAttachmentHeader"><=
/fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_6981431435061401222moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>
<a class=3D"gmail-m_6981431435061401222moz-txt-link-freetext" href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003a6cc8058dd240f0--


--===============4993452078573175268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4993452078573175268==--

