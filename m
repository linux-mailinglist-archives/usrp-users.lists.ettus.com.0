Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B73AD6BDD0
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 16:04:36 +0200 (CEST)
Received: from [::1] (port=50326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnkXq-0001We-U6; Wed, 17 Jul 2019 10:04:34 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:43340)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hnkXn-0001N5-Fr
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 10:04:31 -0400
Received: by mail-oi1-f174.google.com with SMTP id w79so18593850oif.10
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 07:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vz1tIDfYm/V1mZAXA5Ky/xuyB+LSfmxo8NEf16AlBpg=;
 b=I7PPe0p9bSQuSIGuVRmu6Vz2Hf39rlj/bueTYvodgwMzIwM5xnvdX+okxwhEPEKmj5
 +rXWo3Wh4tfJ0/aZhf8S7qWBXxkkFtX34GyK5pCRqadMh46CoSfj64XlQe1mfbZ6190c
 SWe3VMN8SGFrikCHWY0XpgAvENmrPNYsy6bml60WOX8RZsmmYboP2v2yje/NBKOmNR63
 oq9QegF3NrMEx7uf62ZZYTQT0z3PCRXfslFxDIRpvFBk2iPvW/t+DbRVUjtYUnYfq9Qc
 RX8+/c7C9iSxmMwUugVHsmrRHe0vxS0sgjSR84+IcLSL0dcqveSffX/DlDsT4YggxLkT
 l55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vz1tIDfYm/V1mZAXA5Ky/xuyB+LSfmxo8NEf16AlBpg=;
 b=cEyRzPsF6ug1qFy1aHJMzC+K1uJeDiNVmlzTM1VeoeSTepmfNmU9ZU61HXNs8/4pcE
 wqEQCIoqF6LNFjiG8tYtfJrt5mHAbzMqsd1tzpVFw1hQUVe6jYblcd56WJGvI3UhFess
 /wl4cHRLVaZPWVnVtYj3nl+z9VsdxOdJAl5AORcTdx0PJY0A9Li8PRRqD6luFJ6fVn7Q
 XCVwSiwtR10KKGPfpT1B+/f0CHswM7Hd0+lIWlW96Sg5/0DSY78XiaVotOBpdzIJVOje
 BAtDf4A1w8yl869ag1KjI9LWFwtuq/iVTtdbkE1oilyHmb/SrHJ5Tfd5FMHgWJd59KB4
 oyiw==
X-Gm-Message-State: APjAAAX4MREgRzC98GCF6ap74zvQB1CZitZ0zaX/CTcYb0E434OTLxK/
 g1RZ6CN/f7QKnFnNegITgj6x/SMo3bUytHYwKIA=
X-Google-Smtp-Source: APXvYqx9IYHazl+xEOLHcIsQQhqDBmvR6IfsLn0l/RO9UaqJ75RU2RC8jRJl/GQkP/Cq5Y/ToHrDqoEu2CSExGt+NVE=
X-Received: by 2002:aca:ab57:: with SMTP id u84mr19326932oie.61.1563372230474; 
 Wed, 17 Jul 2019 07:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340A337C6CBB311E990C16CAFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcRbYo-15C2eVcmJNz98=0vK5nJEJsdZt6MUd0ViUhcQZQ@mail.gmail.com>
 <5D2F200A.70706@gmail.com>
In-Reply-To: <5D2F200A.70706@gmail.com>
Date: Wed, 17 Jul 2019 16:03:39 +0200
Message-ID: <CAOExtcSr+O5fwm_h5__-o12nZOUwSoa9KiOk2tvd79yW_o9O0Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5928514740890829421=="
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

--===============5928514740890829421==
Content-Type: multipart/alternative; boundary="00000000000072ffe8058de0f671"

--00000000000072ffe8058de0f671
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes already tried different cable. Same issue :(
One usrp is good but the other says SSSSS!.



On Wed, Jul 17, 2019 at 3:18 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/17/2019 07:45 AM, Sumit Kumar via USRP-users wrote:
>
> Hi Jason,
>
> Yes they are consistent, I mean the output of uhd_usrp_probe for both N20=
0
> is exactly the same (except the ip, serial and mac addr).
> I do not know where the problem is! Hardware or software
>
> Regards
> Sumit
>
> My guess is that you have a hardware issue.  Have you tried simple things=
,
> like a different ethernet cable?
>
>
>
> On Wed, Jul 17, 2019 at 1:19 PM Jason Matusiak <
> jason@gardettoengineering.com> wrote:
>
>> I am not really an N-series guy, so this probably won't be helpful.  Hav=
e
>> you tried doing a uhd_usrp_probe on both devices and seen that the
>> responses are consistent?
>>
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, July 17, 2019 7:15 AM
>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Sequence Errors N200
>>
>> Hi,
>> I am trying transmit using Ettus N200 (call it A) but getting this error
>> message on the console
>>
>>
>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS...............................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...................................
>>
>> I looked for it on google and found these links
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037=
495.html
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/03=
2838.html
>>
>> Both the links  suggested problem related to the gigabit port. Then I
>> connected another USRP N200 (call it B) to the same laptop and tried
>> transmitting using that as there were no such sequence error messages.
>>
>> This makes me believe there is some problem with the first USRP, i.e., A=
.
>>
>> Further I tried with different versions of UHD 3.11, UHD 3.15.. but its
>> the same.
>>
>> Receive is good only transmit is throwing error.
>>
>> Not only with UHD, even in labview, when I transmit, I see nothing comin=
g
>> out from the N200 (A).
>>
>> I am using SBXv2 daughter board.
>>
>> Any clue!
>>
>> Regards
>> --
>> --
>> Sumit kumar
>> Postdoc
>> SnT, Luxembourg
>>
>>
>>
>
> --
> --
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
--=20
Sumit kumar
Postdoc
SnT, Luxembourg

--00000000000072ffe8058de0f671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes already tried different cable. Same issue :(=C2=A0<div=
>One usrp is good but the other says SSSSS!.<div><br></div><div><div><br></=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jul 17, 2019 at 3:18 PM Marcus D. Leech via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-6184189719779299526moz-cite-prefix">On 07/17/201=
9 07:45 AM, Sumit Kumar via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Jason,
        <div><br>
          <div>Yes they are consistent, I mean the output of
            uhd_usrp_probe for both N200 is exactly=C2=A0the same (except t=
he
            ip, serial and mac addr).</div>
          <div>I do not know where the problem is! Hardware or software=C2=
=A0</div>
          <div><br>
          </div>
          <div>Regards</div>
          <div>Sumit=C2=A0 <br>
          </div>
        </div>
      </div>
    </blockquote>
    My guess is that you have a hardware issue.=C2=A0 Have you tried simple
    things, like a different ethernet cable?<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 17, 2019 at 1:19
          PM Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering=
.com" target=3D"_blank">jason@gardettoengineering.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;fo=
nt-size:12pt;color:rgb(0,0,0)">I
              am not really an N-series guy, so this probably won&#39;t be
              helpful.=C2=A0 Have you tried doing a uhd_usrp_probe on both
              devices and seen that the responses are consistent?</div>
            <div id=3D"gmail-m_-6184189719779299526gmail-m_9014729813065413=
461Signature">
              <div>
                <div style=3D"font-family:Calibri,Arial,Helvetica,sans-seri=
f;font-size:12pt;color:rgb(0,0,0)"><br>
                </div>
                <hr style=3D"display:inline-block;width:98%">
                <div id=3D"gmail-m_-6184189719779299526gmail-m_901472981306=
5413461divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=3D"#=
000000" face=3D"Calibri, sans-serif"><b>From:</b> USRP-users
                    &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.co=
m" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
                    on behalf of Sumit Kumar via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;<br>
                    <b>Sent:</b> Wednesday, July 17, 2019 7:15 AM<br>
                    <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>
                    &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                    <b>Subject:</b> [USRP-users] Sequence Errors N200</font=
>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <div dir=3D"ltr">Hi,=C2=A0
                    <div>I am trying transmit using Ettus N200 (call it
                      A) but getting this error message on the console=C2=
=A0</div>
                    <div><br>
                    </div>
                    <div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS=
SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.........=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
.........................................................<br>
                    </div>
                    <div><br>
                    </div>
                    <div>I looked for it on google and found these
                      links=C2=A0</div>
                    <div><a href=3D"http://lists.ettus.com/pipermail/usrp-u=
sers_lists.ettus.com/2014-May/037495.html" target=3D"_blank">http://lists.e=
ttus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html</a><br>
                    </div>
                    <div><a href=3D"http://lists.ettus.com/pipermail/usrp-u=
sers_lists.ettus.com/2012-July/032838.html" target=3D"_blank">http://lists.=
ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html</a><br=
>
                    </div>
                    <div><br>
                    </div>
                    <div>Both the links=C2=A0 suggested problem related to
                      the gigabit port. Then I connected another USRP
                      N200 (call it B) to the same laptop and tried
                      transmitting using that as there were no such
                      sequence error messages.</div>
                    <div><br>
                    </div>
                    <div>This makes me believe there is some problem
                      with the first USRP, i.e., A.=C2=A0<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Further I tried with different versions of UHD
                      3.11, UHD 3.15.. but its the same.=C2=A0</div>
                    <div><br>
                    </div>
                    <div>Receive is good only transmit is throwing
                      error.=C2=A0</div>
                    <div><br>
                    </div>
                    <div>Not only with UHD, even in labview, when I
                      transmit, I see nothing coming out from the N200
                      (A).=C2=A0</div>
                    <div><br>
                    </div>
                    <div>I am using SBXv2 daughter board.=C2=A0</div>
                    <div><br>
                    </div>
                    <div>Any clue!</div>
                    <div><br>
                    </div>
                    <div>Regards</div>
                    <div>-- <br>
                      <div dir=3D"ltr" class=3D"gmail-m_-618418971977929952=
6gmail-m_9014729813065413461x_gmail_signature">
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr"><span style=3D"color:rgb(136,1=
36,136);font-size:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136=
);font-size:12.8px">
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">Sumit
                                kumar<br>
                                Postdoc</div>
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">SnT,
                                Luxembourg</div>
                              <div style=3D"color:rgb(136,136,136);font-siz=
e:12.8px"><br>
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail-m_-6184189719779299526gmail_signature=
">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr"><span style=3D"color:rgb(136,136,136);font-siz=
e:12.8px">--=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8=
px">
              <div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit
                kumar<br>
                Postdoc</div>
              <div style=3D"color:rgb(136,136,136);font-size:12.8px">SnT,
                Luxembourg</div>
              <div style=3D"color:rgb(136,136,136);font-size:12.8px"><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-6184189719779299526mimeAttachmentHeader">=
</fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-6184189719779299526moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-6184189719779299526moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span sty=
le=3D"color:rgb(136,136,136);font-size:12.8px">--=C2=A0</span><br style=3D"=
color:rgb(136,136,136);font-size:12.8px"><div style=3D"color:rgb(136,136,13=
6);font-size:12.8px">Sumit kumar<br>Postdoc</div><div style=3D"color:rgb(13=
6,136,136);font-size:12.8px">SnT, Luxembourg</div><div style=3D"color:rgb(1=
36,136,136);font-size:12.8px"><br></div><br></div></div></div></div>

--00000000000072ffe8058de0f671--


--===============5928514740890829421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5928514740890829421==--

