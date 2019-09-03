Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A671A75D0
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2019 22:58:32 +0200 (CEST)
Received: from [::1] (port=40114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5Fsk-00037n-1f; Tue, 03 Sep 2019 16:58:30 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:34263)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1i5Fsf-00030c-M1
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 16:58:25 -0400
Received: by mail-io1-f41.google.com with SMTP id s21so39314435ioa.1
 for <usrp-users@lists.ettus.com>; Tue, 03 Sep 2019 13:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2HjqYMZaPXMYiRrl6GBXsqk9k7I12gWWgYbe48f+Qgw=;
 b=quwxH7TJzyefnuJLh6qvUAUujY4TSs3HU4yKU59FT0hNHb/S7oV8NecCSY/QtKjlvb
 Baa61wWaXhEpsj2nx/C5ta+8IPuWO+GWe9zAs4VpBIZ2yO9XegyjCG1RwScD9tjwX9yn
 5bCIf3bTMbdPQ74InvSKxetdnCZGYH9YsSq8M8VGsg4OYVFpRxeF7Du68zZ5SwZin+PQ
 633kwGUjWPnM33qArDV9L09V7ejST44LHPRzCUxGz+nYk28FXahFGaIH5iPeKjZ4DzYz
 fhh3f+hZerAjLxVaYEFF2u83AOxlDePrJ+yNOLsXAOwQq9LxK1sqFvCWmT03ssmyFB47
 3bLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2HjqYMZaPXMYiRrl6GBXsqk9k7I12gWWgYbe48f+Qgw=;
 b=J9Wlh0bBL4UOLHMNR4/EglDqRW76XtfUEgviLmSfLxBJe5VzhkyAdP38DQ24juv/sv
 PaSLk3c5f7J5rEBMc03M0S++0B4NjgET85/WZ8JbteAEOV0zuoMoBdpKcsWKm/FRxDG9
 EAcT06fbEC6beAcyqjltruFIJfasvq65JbVX/oBTPuSRyGXUWj54pfgxeSP3YB6WCRrs
 Z/lUj8htLifFdFZ2/kzh5gGZoUKEU24JROwQ51B7kV10Awrh8rAX9HYznAyXxnEmQpb3
 HCNUqMxO2X//HmsgQotnZE3qGV9mlEUEf9UBC7qvWvnYuCgy8ULKJhaEGWacmzUiMOmK
 dgSQ==
X-Gm-Message-State: APjAAAXuBpY0rjWwPBpFfEleCqG5u47Sausn/G17aMEMQichzvc8Pr1g
 W6RPm/6qnErYEQuFesvo49zgOSE2MI78cOLyo6o=
X-Google-Smtp-Source: APXvYqwNC1IyUX9mM20FAiOlX4tcefc7+bJZ8zkgqApaNE5zk2OzGf+CaiVjJKmyDgTRJMz+39IKLhzD3RNINIGVQPY=
X-Received: by 2002:a6b:7a09:: with SMTP id h9mr9461586iom.0.1567544264922;
 Tue, 03 Sep 2019 13:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB3788A9542C8AEE2E59A04D4DE6B90@DM6PR03MB3788.namprd03.prod.outlook.com>
Date: Tue, 3 Sep 2019 13:57:31 -0700
Message-ID: <CA+JMMq80MhC7x4O8W8ytrnFVxEO_ER-e+gC7yX2LM5mb6tdSHw@mail.gmail.com>
To: "Quadri,Adnan" <adnan.quadri@louisville.edu>
Subject: Re: [USRP-users] Addsub HLS Block Error
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0699261798960524103=="
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

--===============0699261798960524103==
Content-Type: multipart/alternative; boundary="00000000000014986b0591ac578c"

--00000000000014986b0591ac578c
Content-Type: text/plain; charset="UTF-8"

I ran into this the other day and it's independent of the HLS component of
the addsub block (since the interface is identical). You need to connect
both outputs of the addsub block to something, even a null sink. I'm pretty
sure this wasn't the intended behavior and also pretty sure that it wasn't
like this last time I checked (which was more than a year ago), so maybe it
should be filed as a bug.

Nick

On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> We are trying to run the RFNoC addsub HLS block.
>
> I was able to build the FPGA Image and made sure in the noc_block verilog
> code to point to the HLS implementation for addsub block on RFNoC as
> opposed to the verilog/VHDL implementation.
>
> But when we run the example Flowgraph with two signal source as input to
> the two inputs for addsub block on GRC, we get the following error -
>
> ERROR:
> thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]: RuntimeError:
> Invalid recv stream command - stream now on multiple channels in a single
> streamer will fail to time align.
>
> Does this have anything to do with the C++ code for HLS implementation or
> is it a problem at UHD level?
>
> Thanks,
> Adnan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000014986b0591ac578c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I ran into this the other day and it&#39;s independen=
t of the HLS component of the addsub block (since the interface is identica=
l). You need to connect both outputs of the addsub block to something, even=
 a null sink. I&#39;m pretty sure this wasn&#39;t the intended behavior and=
 also pretty sure that it wasn&#39;t like this last time I checked (which w=
as more than a year ago), so maybe it should be filed as a bug.<br></div><d=
iv><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
We are trying to run the RFNoC addsub HLS block.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I was able to build the FPGA Image and made sure in the noc_block verilog c=
ode to point to the HLS implementation for addsub block on RFNoC as opposed=
 to the verilog/VHDL implementation.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
But when we run the example Flowgraph with two signal source as input to th=
e two inputs for addsub block on GRC, we get the following error -</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
ERROR:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]: RuntimeErr=
or: Invalid recv stream command - stream now on multiple channels in a sing=
le streamer will fail to time align.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Does this have anything to do with the C++ code for HLS implementation or i=
s it a problem at UHD level?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Adnan<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000014986b0591ac578c--


--===============0699261798960524103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0699261798960524103==--

