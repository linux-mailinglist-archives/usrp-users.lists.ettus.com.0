Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3EC256F41
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 18:03:26 +0200 (CEST)
Received: from [::1] (port=47086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCPne-0003Yd-Jp; Sun, 30 Aug 2020 12:03:22 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:42101)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <eb@comsec.com>) id 1kCPnb-0003Se-3z
 for usrp-users@lists.ettus.com; Sun, 30 Aug 2020 12:03:19 -0400
Received: by mail-il1-f175.google.com with SMTP id t13so4549801ile.9
 for <usrp-users@lists.ettus.com>; Sun, 30 Aug 2020 09:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comsec-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2690Jv0f1WuUFZK1tr68OoxEEAOdWTAZEQeuUCid/lw=;
 b=lMuiUiMAScGIhqRRZ2O5bMyBCG4/SwkK/m2LgxmQKpQjHByhxtTh9h1Srsle0elp3p
 31ZBT400r3K9KKr6pO5teOTEopZbhzoBLknFOqNTQ4Ljk52l3AH3B2+RE1lOMsVXe8EP
 Tx47qDegBxgT9857Tr4NJYhRq+Hi5JhJ63aFnuyiNVxYcgt8cmvO5t7OmwBmMNam0a7+
 s8BkJeBaJ+GF5NrfyET4dgxm9UMfssPv49gvVqOZGTIBfC2ot6acLDzacuC4MQdtl5se
 dJSuZtI6pbMLGY6VemM+isqJupbW2PITXL8HPUARazENeKUoYEMeDdrDB0DSEzl/MgYR
 bXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2690Jv0f1WuUFZK1tr68OoxEEAOdWTAZEQeuUCid/lw=;
 b=PxeL1vm9B9/TFCrcxS22fcCyOAWb+UmT070CvQXMBLoks57VVbT27pLkHg66iBvTmG
 VNAF0VSGrSSMhY2LmbH9OOHC6FIWyZZIEzMZtPu3PJYw6puNgxgr4GNaMC5fz6msh1fW
 NYRN7UDHj6eGXXIIqmQDnJO9d8zJIZHy3PXshPOCMDcoqK3Ll1lpihZ8fDrGUOi6cGbx
 dKfxE//9utZTKq4U/uMcjRMHknuqg42fQHf/hxo1jWJHdIJoeITS2KoLBqv2gC2Reqey
 dUi7k7DkvU59GjTv2Hb/SmjFbNKKwC1MKKLkIqkM3RJHKAUZXAb50dWrjueZepb2HGgH
 aqag==
X-Gm-Message-State: AOAM533iRPMcQ3usXasMS7XIFy0GGasbNI6A1qa49nTfxoy3sMlL96pD
 cIl63g7aWt8HcrvL3SGkQSnImcxgRLEDmrwZ1gpaKA==
X-Google-Smtp-Source: ABdhPJytFTmDw7UXheLIZ++uQs+eQo6cxngMJjXPVENDCF1fRN23yx27VfMtgaqAO1Jzjz+/9mAHB3yV0tTwU2g1TTw=
X-Received: by 2002:a92:6d10:: with SMTP id i16mr6396856ilc.228.1598803358298; 
 Sun, 30 Aug 2020 09:02:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF_3i7gu0QMiY3pVc7Qt7pyG2NNBsXjut292g_4E4HEV_t6wg@mail.gmail.com>
 <CAL7q81vKgWaSKbX61E+Sfr7ahF-RBimt73r2Lvwj-DFMo65XRw@mail.gmail.com>
In-Reply-To: <CAL7q81vKgWaSKbX61E+Sfr7ahF-RBimt73r2Lvwj-DFMo65XRw@mail.gmail.com>
Date: Sun, 30 Aug 2020 09:02:27 -0700
Message-ID: <CAJF_3i6=GJhXOx0yDoFZ5W0V2jqh23AAPpEJc+sQnf=TbBVofQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Speeding up build of usrp3 fpga code??
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
From: Eric Blossom via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Eric Blossom <eb@comsec.com>
Content-Type: multipart/mixed; boundary="===============6864455598823028391=="
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

--===============6864455598823028391==
Content-Type: multipart/alternative; boundary="0000000000003ccfab05ae1a6a2f"

--0000000000003ccfab05ae1a6a2f
Content-Type: text/plain; charset="UTF-8"

Thank you!

On Sat, Aug 29, 2020 at 10:42 PM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hi Eric,
>
> Unfortunately no, but luckily that is usually a one time ordeal. The built
> IP is kept separately from the main build, and it is not removed when you
> run 'make clean'. Instead, you have to run 'make cleanall' if you want to
> remove the IP build directory, which can be necessary if you switch UHD
> releases and the supported Vivado version changed.
>
> Jonathon
>
> On Sat, Aug 29, 2020 at 8:07 PM Eric Blossom via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Folks,
>>
>> I'm in the midst of building the fpga code for the x310 on master.  I'm
>> building on a 24-thread xeon with plenty of memory.
>> Is there a magic flag, setting, etc that enables parallelism in
>> generating the ip (the invocations of viv_generate_ip.tcl)??
>> I tried make -j4 to no avail.
>>
>> I really like how the build system regenerates the ip for different
>> families and part numbers.  NIcely done!
>>
>> Thanks!
>> Eric
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000003ccfab05ae1a6a2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you!</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Sat, Aug 29, 2020 at 10:42 PM Jonathon Pendlu=
m &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi Eric,<div><br></div><div>Unfortunately no, but lucki=
ly that is usually a one time ordeal. The built IP is kept separately from =
the main=C2=A0build, and it is not removed when you run &#39;make clean&#39=
;. Instead, you have to run &#39;make cleanall&#39; if you want to remove t=
he IP build directory, which can be necessary if you switch UHD releases an=
d the supported Vivado version changed.</div><div><br></div><div>Jonathon</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Aug 29, 2020 at 8:07 PM Eric Blossom via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi Folks,<div><br></div><div>I&#39;m in the midst =
of building the fpga code for the x310 on master.=C2=A0 I&#39;m building on=
 a 24-thread xeon with plenty of memory.</div><div>Is there a magic flag, s=
etting, etc that enables parallelism in generating the ip (the invocations =
of viv_generate_ip.tcl)??</div><div>I tried make -j4 to no avail.</div><div=
><br></div><div>I really like how the build system regenerates the ip for d=
ifferent families and part numbers.=C2=A0 NIcely done!</div><div><br></div>=
<div>Thanks!</div><div>Eric</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000003ccfab05ae1a6a2f--


--===============6864455598823028391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6864455598823028391==--

